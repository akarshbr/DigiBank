import 'package:digibank/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTextStyles {
  static TextStyle titleStyl = GoogleFonts.poppins(
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    color: ColorTheme.black,
  );

  static TextStyle bodyTextGrey = GoogleFonts.raleway(
    fontSize: 16.0,
    color: ColorTheme.grey,
  );
  static TextStyle bodyTextblack = GoogleFonts.raleway(
    fontSize: 16.0,
    color: ColorTheme.black,
  );
  static TextStyle labeltxt = GoogleFonts.kanit(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorTheme.white,
  );
  static TextStyle bottomlabel = GoogleFonts.kanit(fontSize: 11);
}
