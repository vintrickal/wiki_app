import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiki_app/grounded/model/armor_model.dart';
import 'package:wiki_app/helpers/style.dart';
import 'package:wiki_app/widgets/skeleton_text.dart';

class CustomListView extends StatefulWidget {
  final String tagName;
  final List<ItemModel> data;
  final void Function()? func;
  final void Function()? funcModal;

  const CustomListView(
      {required this.tagName,
      required this.data,
      required this.func,
      required this.funcModal,
      super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.tagName,
              style: rubik15w900,
            ),
            InkWell(
              onTap: widget.func,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  'See All',
                  style: rubik13w300Underlined,
                ),
              ),
            )
          ],
        ),
        sizedBox10,
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 190, minHeight: 150),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: widget.funcModal,
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
                                  image:
                                      AssetImage(widget.data[index].imagePath!),
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
                                widget.data[index].title!,
                                style: rubik13w500,
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                );
              }),
        )
      ]),
    );
  }
}
