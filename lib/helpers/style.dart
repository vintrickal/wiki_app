import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Colors
var colorPrimaryRed = const Color(0xFFEB5353);
var colorAppBar = HexColor('#468847');
var colorScaffold = HexColor('#e1e2c6');
var colorTag = HexColor('#e9681a');
var bodyColor = HexColor('#3a3a3a');

/// Font Text Styles
final rubik20w900 = GoogleFonts.rubik(
    fontSize: 20, fontWeight: FontWeight.w900, color: bodyColor);

final rubik13w500 = GoogleFonts.rubik(
    fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white);

final rubik13w500black = GoogleFonts.rubik(
    fontSize: 13, fontWeight: FontWeight.w500, color: bodyColor, height: 1.7);

final rubik15w900 = GoogleFonts.rubik(
    fontSize: 15, fontWeight: FontWeight.w900, color: colorTag);

final rubik13w300Underlined = GoogleFonts.rubik(
  fontSize: 13,
  fontWeight: FontWeight.w600,
  color: colorTag,
  decoration: TextDecoration.underline,
);

final rubik16w400 = GoogleFonts.rubik(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: bodyColor,
  height: 1,
);

final rubik16w600 = GoogleFonts.rubik(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: Colors.white,
  height: 1,
);

final tabStyle = GoogleFonts.rubik(
    fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white);

final lgBlackGreen = LinearGradient(
    colors: [Color(0xff233329), Color(0xff63d471)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

final lgBlackOrange = LinearGradient(
    colors: [Color(0xff233329), Color(0xffe9681a)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

/// Sizedbox
const sizedBox0 = SizedBox();

const sizedBox8 = SizedBox(
  height: 8,
);

const sizedBox10 = SizedBox(
  height: 10,
);

const sizedBox20 = SizedBox(
  height: 20,
);

const sizedBox30 = SizedBox(
  height: 30,
);

const sizedBox50 = SizedBox(
  height: 50,
);

const sizedBox5 = SizedBox(
  height: 5,
);

Widget loadingIcon = CircularProgressIndicator.adaptive(
  backgroundColor: colorPrimaryRed,
);

// Hex code settings
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
