import 'package:flutter/material.dart';
import 'package:wiki_app/helpers/style.dart';

class DetailsLanding extends StatefulWidget {
  const DetailsLanding({super.key});

  @override
  State<DetailsLanding> createState() => _DetailsLandingState();
}

class _DetailsLandingState extends State<DetailsLanding> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> screenArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return DefaultTabController(
      length: 3,
      child:

          // Scaffold(
          //   body: NestedScrollView(
          //       headerSliverBuilder: ((context, innerBoxIsScrolled) {
          //         return [
          //           SliverAppBar(
          //             centerTitle: true,
          //             flexibleSpace: Container(
          //                 decoration: BoxDecoration(gradient: lgBlackOrange)),
          //             leading: InkWell(
          //                 onTap: () {
          //                   Navigator.pop(context);
          //                 },
          //                 child: Icon(Icons.arrow_back_rounded)),
          //             title: Text(screenArguments['title']),
          //             bottom: TabBar(
          //                 indicatorColor: colorTag,
          //                 labelColor: Colors.white,
          //                 labelStyle: tabStyle,
          //                 tabs: [
          //                   Tab(
          //                     text: 'Tier III',
          //                   ),
          //                   Tab(
          //                     text: 'Tier II',
          //                   ),
          //                   Tab(
          //                     text: 'Tier I',
          //                   ),
          //                 ]),
          //           )
          //         ];
          //       }),
          //       body: TabBarView(children: [
          //         screenArguments['tier_III'],
          //         screenArguments['tier_II'],
          //         screenArguments['tier_I']
          //       ])),
          // )

          Scaffold(
              appBar: AppBar(
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: BoxDecoration(gradient: lgBlackOrange)),
                leading: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_rounded)),
                title: Text(screenArguments['title']),
                bottom: TabBar(
                    indicatorColor: colorTag,
                    labelColor: Colors.white,
                    labelStyle: tabStyle,
                    tabs: [
                      Tab(
                        text: 'Tier III',
                      ),
                      Tab(
                        text: 'Tier II',
                      ),
                      Tab(
                        text: 'Tier I',
                      ),
                    ]),
              ),
              body: TabBarView(children: [
                screenArguments['tier_III'],
                screenArguments['tier_II'],
                screenArguments['tier_I']
              ])),
    );
  }
}
