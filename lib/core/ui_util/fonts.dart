import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static const clashDisplay = "Clash Display";
  static const clashDisplayBold = "Clash Display Bold";
}

class AppTextStyles {
  static TextStyle textStyle(
          {required double fontSize,
          Color color = AppColors.white,
          FontWeight fontWeight = FontWeight.w400}) =>
      GoogleFonts.montserrat(
          color: color, fontSize: fontSize, fontWeight: fontWeight);

  static TextStyle italicTextStyle( {required double fontSize,
          Color color = AppColors.white,
          FontWeight fontWeight = FontWeight.w400}) =>  GoogleFonts.montserrat(
          color: color, fontSize: fontSize, fontWeight: fontWeight, fontStyle: FontStyle.italic);
  
  static TextStyle headerTextStyle( {required double fontSize,
          Color color = AppColors.white,
          FontWeight fontWeight = FontWeight.w400}) =>  TextStyle(
          color: color, fontSize: fontSize, fontWeight: fontWeight, fontFamily: AppFonts.clashDisplayBold);
      
}
