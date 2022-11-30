import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_app/helpers/style.dart';

Container card(String imagePath, String title, String subtitle) {
  return Container(
    height: 200,
    decoration: BoxDecoration(
        color: HexColor('#373539'), borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: Container(
            height: 90.0,
            width: 180.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        sizedBox8,
        Text(
          title,
          style: GoogleFonts.yuseiMagic(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: HexColor('#BAB9BB')),
        ),
        sizedBox8,
        Text(
          subtitle,
          style: GoogleFonts.nunito(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: HexColor('#CBCBCB')),
        )
      ]),
    ),
  );
}
