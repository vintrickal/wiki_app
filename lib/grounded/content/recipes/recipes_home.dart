import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_app/grounded/model/landing_model.dart';
import 'package:wiki_app/helpers/constants.dart';
import 'package:wiki_app/helpers/style.dart';
import 'package:wiki_app/widgets/global_widgets.dart';

class RecipesHome extends StatefulWidget {
  const RecipesHome({super.key});

  @override
  State<RecipesHome> createState() => _RecipesHomeState();
}

class _RecipesHomeState extends State<RecipesHome> {
  // List of Recipes
  List<LandingModel> backyardList = [
    LandingModel(
        title: 'Armor',
        subtitle: 'Protect yourself, specially your balls',
        imagePath: armor),
    LandingModel(
        title: 'Base Building',
        subtitle: 'Satisfy your inner child',
        imagePath: basebuilding),
    LandingModel(
        title: 'Consumables',
        subtitle: 'You want to survive, right?',
        imagePath: consumable),
    LandingModel(
        title: 'Décor', subtitle: 'Beautify your ugly base', imagePath: decor),
    LandingModel(
        title: 'Edibles',
        subtitle: 'Hmmmm foods *moan* - Max',
        imagePath: edibles),
    LandingModel(
        title: 'Storage & Utilities',
        subtitle: 'It\'s hording time',
        imagePath: storage),
    LandingModel(
        title: 'Tools',
        subtitle: 'Craft the tools of destruction',
        imagePath: tools),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 220) / 2;
    final double itemWidth = size.width / 2;
    return Padding(
      padding: const EdgeInsets.only(top: 34, left: 12, right: 12),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: (itemWidth / itemHeight),
                  ),
                  children: List.generate(backyardList.length, (index) {
                    return index % 2 == 0
                        ? Column(
                            children: [
                              card(
                                  backyardList[index].imagePath!,
                                  backyardList[index].title!,
                                  backyardList[index].subtitle!)
                            ],
                          )
                        : Column(
                            children: [
                              sizedBox30,
                              card(
                                  backyardList[index].imagePath!,
                                  backyardList[index].title!,
                                  backyardList[index].subtitle!)
                            ],
                          );
                  }))
            ]),
      ),
    );
  }
}
