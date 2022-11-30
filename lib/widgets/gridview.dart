import 'package:flutter/material.dart';
import 'package:wiki_app/grounded/model/armor_model.dart';
import 'package:wiki_app/helpers/assets_list.dart';
import 'package:wiki_app/helpers/style.dart';

class GridViewStlye extends StatefulWidget {
  const GridViewStlye({super.key});

  @override
  State<GridViewStlye> createState() => _GridViewStlyeState();
}

class _GridViewStlyeState extends State<GridViewStlye> {
  List<ItemModel> armor = <ItemModel>[
    ItemModel(title: 'Antlion Armor', imagePath: antlion_armor),
    ItemModel(title: 'Assassin Armor', imagePath: assassin_armor),
    ItemModel(title: 'Black Ox Armor', imagePath: black_ox_armor),
    ItemModel(title: 'Fire Ant Armor', imagePath: fire_ant_armor),
    ItemModel(title: 'Roly Poly Armor', imagePath: roly_poly_armor),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: colorScaffold,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 16,
                childAspectRatio: 150.0 / 150.0,
              ),
              children: List.generate(armor.length, (index) {
                return InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: colorTag,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(armor[index].imagePath!),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: 150,
                            height: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 11, right: 8, left: 8),
                            child: Text(
                              armor[index].title!,
                              style: rubik13w500,
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })),
        ),
      ),
    );
  }
}
