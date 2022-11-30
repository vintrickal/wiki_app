import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_app/grounded/content/backyard/backyard_home.dart';
import 'package:wiki_app/grounded/content/mechanics/mechanics_home.dart';
import 'package:wiki_app/grounded/content/recipes/recipes_home.dart';
import 'package:wiki_app/grounded/content/social/social_home.dart';
import 'package:wiki_app/helpers/assets_list.dart';
import 'package:wiki_app/helpers/style.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wiki_app/providers/bottomnavbar_provider.dart';

class Home extends ConsumerStatefulWidget {
  int pageIndex = 0;
  Home({super.key, required this.pageIndex});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  int _index = 0;
  final pages = [
    const BackyardHome(),
    const RecipesHome(),
    const MechanicsHome(),
    const SocialHome()
  ];

  final namePage = ['Backyard', 'Recipes', 'Mechanics', 'Social'];

  void initState() {
    super.initState();
    setIndex();
  }

  setIndex() {
    if (bottomNavBarProvider.argument == null) {
      setState(() {
        _index = 0;
      });
    } else {
      var bottomNavBarData = ref.read(bottomNavBarProvider);
      _index = bottomNavBarData;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#1E1E1E'),
      appBar: _appBar(),
      body: pages[_index],
      bottomNavigationBar: _navBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: HexColor('#1E1E1E'),
      title: Padding(
        padding: const EdgeInsets.only(left: 6),
        child: Text(
          namePage[_index],
          style:
              GoogleFonts.yuseiMagic(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(Icons.search),
        )
      ],
    );
  }

  FloatingNavbar _navBar() {
    return FloatingNavbar(
      backgroundColor: HexColor('#373539'),
      selectedBackgroundColor: HexColor('#FFFFFF'),
      selectedItemColor: Colors.red,
      onTap: (int val) => setState(() => _index = val),
      currentIndex: _index,
      items: [
        FloatingNavbarItem(
            customWidget: _index != 0
                ? _bottomIcon('Backyard', home_icon_white, '#FFFFFF', 0)
                : _bottomIcon('Backyard', home_icon, '#373539', 0)),
        FloatingNavbarItem(
            customWidget: _index != 1
                ? _bottomIcon('Recipes', recipe_icon_white, '#FFFFFF', 1)
                : _bottomIcon('Recipes', recipe_icon, '#373539', 1)),
        FloatingNavbarItem(
            customWidget: _index != 2
                ? _bottomIcon('Mechanics', mechanics_icon_white, '#FFFFFF', 2)
                : _bottomIcon('Mechanics', mechanics_icon, '#373539', 2)),
        FloatingNavbarItem(
            customWidget: _index != 3
                ? _bottomIcon('Social', social_icon_white, '#FFFFFF', 3)
                : _bottomIcon('Social', social_icon, '#373539', 3)),
      ],
    );
  }

  InkWell _bottomIcon(String title, String assets, String color, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _index = index;
          saveToBottomNavbarProvider(ref, _index);
        });
      },
      child: Column(
        children: [
          SvgPicture.asset(assets),
          Text(title,
              style: GoogleFonts.nunito(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: HexColor(color)))
        ],
      ),
    );
  }
}
