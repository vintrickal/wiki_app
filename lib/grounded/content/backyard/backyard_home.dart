import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_app/grounded/model/landing_model.dart';
import 'package:wiki_app/helpers/constants.dart';
import 'package:wiki_app/helpers/style.dart';
import 'package:wiki_app/widgets/global_widgets.dart';

class BackyardHome extends StatefulWidget {
  const BackyardHome({super.key});

  @override
  State<BackyardHome> createState() => _BackyardHomeState();
}

class _BackyardHomeState extends State<BackyardHome> {
  // List of Items in Backyard
  List<LandingModel> backyardList = [
    LandingModel(
        title: 'Biomes', subtitle: 'Explore like Dora', imagePath: bbq),
    LandingModel(
        title: 'Landmarks',
        subtitle: 'Unlock the secrets it holds',
        imagePath: four_leaf_clover),
    LandingModel(
        title: 'Resources', subtitle: 'Horde them all', imagePath: acorn),
    LandingModel(
        title: 'Creatures',
        subtitle: 'Learn to exploit their weakness',
        imagePath: aphid),
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
