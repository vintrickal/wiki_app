import 'package:flutter/material.dart';
import 'package:wiki_app/helpers/assets_list.dart';
import 'package:wiki_app/helpers/style.dart';

bool val = false;

ModalSheet(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return FractionallySizedBox(
            heightFactor: .8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(val ? 270 : 60),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    flexibleSpace: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        onExpansionChanged: (value) {
                          setState((() {
                            if (val) {
                              val = false;
                            } else {
                              val = true;
                            }
                          }));
                        },
                        leading: Image.asset(antlion_armor),
                        title: Text('Antlion Armor Set'),
                        textColor: bodyColor,
                        children: <Widget>[
                          val
                              ? ListTile(
                                  title: Text(
                                  'Antlion Armor is an armor set crafted with Antlion parts. The piece effect Sizzle Protection increases your resistance against the burning daytime heat in the Sandbox and the charcoals in the BBQ Spill. Its sleek bonus decreases thirst drain, making it useful for environments that increase thirst drain like the Sandbox or BBQ Spill. The Quickdraw set bonus increases your attack speed with bows and crossbows while in combat.',
                                  style: rubik13w500black,
                                ))
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      sizedBox30,
                      ExpansionTile(
                        leading: Image.asset(antlion_wide_brim),
                        title: Text('Antlion Wide Brim'),
                        textColor: bodyColor,
                        children: <Widget>[
                          ListTile(
                              title: Text(
                            'Antlion Armor is an armor set crafted with Antlion parts. The piece effect Sizzle Protection increases your resistance against the burning daytime heat in the Sandbox and the charcoals in the BBQ Spill. Its sleek bonus decreases thirst drain, making it useful for environments that increase thirst drain like the Sandbox or BBQ Spill. The Quickdraw set bonus increases your attack speed with bows and crossbows while in combat.',
                            style: rubik13w500black,
                          )),
                        ],
                      ),
                      sizedBox30,
                      ExpansionTile(
                        leading: Image.asset(antlion_poncho),
                        title: Text('Antlion Poncho'),
                        textColor: bodyColor,
                        children: <Widget>[
                          ListTile(title: Text('This is tile number 1')),
                        ],
                      ),
                      sizedBox30,
                      ExpansionTile(
                        leading: Image.asset(antlion_spurs),
                        title: Text('Antlion Spurs'),
                        textColor: bodyColor,
                        children: <Widget>[
                          ListTile(title: Text('This is tile number 1')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
      });
}
