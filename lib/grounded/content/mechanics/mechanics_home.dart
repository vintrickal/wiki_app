import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_app/grounded/model/landing_model.dart';
import 'package:wiki_app/helpers/constants.dart';
import 'package:wiki_app/helpers/style.dart';
import 'package:wiki_app/widgets/global_widgets.dart';

class MechanicsHome extends StatefulWidget {
  const MechanicsHome({super.key});

  @override
  State<MechanicsHome> createState() => _MechanicsHomeState();
}

class _MechanicsHomeState extends State<MechanicsHome> {
  // List of Mechanics
  List<LandingModel> backyardList = [
    LandingModel(
        title: 'Achievements',
        subtitle: 'Are you a completionist?',
        imagePath: achievements),
    LandingModel(
        title: 'Game Modes',
        subtitle: 'Bored in life? Go Whoa!',
        imagePath: gamemode),
    LandingModel(
        title: 'Mutation', subtitle: 'Am I an X-men now?', imagePath: mutation),
    LandingModel(
        title: 'Quest',
        subtitle: 'Finally, purpose in life',
        imagePath: quests),
    LandingModel(title: 'Pet', subtitle: 'Your emergency food', imagePath: pet),
    LandingModel(
        title: 'Status effects',
        subtitle: 'Buff me up',
        imagePath: statusEffects),
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
