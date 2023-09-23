import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionMarkWidget3 extends StatelessWidget {
  const QuestionMarkWidget3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight(context,
            percent: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 25
                : 5),
        left: screenWidth(context,
            percent: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 75
                : 66),
        child: Text(
          "?",
          style: GoogleFonts.bungeeOutline(
              fontSize: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? 48.spMin
                  : 96.spMin,
              color: AppColors.accentColor),
        ));
  }
}

class QuestionMarkWidget3Mobile extends StatelessWidget {
  const QuestionMarkWidget3Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight(context, percent: 2),
        left: screenWidth(context, percent: 30),
        child: Text(
          "?",
          style: GoogleFonts.bungeeOutline(
              fontSize: 24.spMin, color: AppColors.accentColor),
        ));
  }
}

class QuestionMarkWidget2 extends StatelessWidget {
  const QuestionMarkWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight(context,
            percent: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 25
                : 5),
        left: screenWidth(context, percent: 55),
        child: Text(
          "?",
          style: GoogleFonts.bungeeOutline(
              fontSize: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? 48.spMin
                  : 96.spMin,
              color: AppColors.accentColor),
        ));
  }
}

class QuestionMarkWidget2Mobile extends StatelessWidget {
  const QuestionMarkWidget2Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight(context, percent: 2),
        left: screenWidth(context, percent: 15),
        child: Text(
          "?",
          style: GoogleFonts.bungeeOutline(
              fontSize: 24.spMin, color: AppColors.accentColor),
        ));
  }
}

class QuestionMarkWidget1 extends StatelessWidget {
  const QuestionMarkWidget1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight(context,
            percent: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 20
                : 0.5),
        left: screenWidth(context,
            percent: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 65
                : 60),
        child: Text(
          "?",
          style: GoogleFonts.bungeeOutline(
              fontSize: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? 64.spMin
                  : 128.spMin,
              color: AppColors.accentColor),
        ));
  }
}

class QuestionMarkWidget1Mobile extends StatelessWidget {
  const QuestionMarkWidget1Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: screenHeight(context, percent: 0.5),
        left: screenWidth(context, percent: 22.5),
        child: Text(
          "?",
          style: GoogleFonts.bungeeOutline(
              fontSize: 32.spMin, color: AppColors.accentColor),
        ));
  }
}
