import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "$firstText\n",
        style: AppTextStyles.headerTextStyle(
            fontSize: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 24.spMin
                : 32.spMin,
            fontWeight: FontWeight.w800),
        children: [
          TextSpan(
            text: secondText,
            style: AppTextStyles.headerTextStyle(
                fontSize: screenWidth(context) >= Breakpoint.tablet &&
                        screenWidth(context) < 1100
                    ? 24.spMin
                    : 32.spMin,
                fontWeight: FontWeight.w800,
                color: AppColors.accentColor),
          )
        ],
      ),
    );
  }
}

/// mobile version of [HeaderText]
class HeaderTextMobile extends StatelessWidget {
  const HeaderTextMobile({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "$firstText\n",
        style: AppTextStyles.headerTextStyle(
            fontSize: 20.spMin, fontWeight: FontWeight.w800),
        children: [
          TextSpan(
            text: secondText,
            style: AppTextStyles.headerTextStyle(
                fontSize: 20.spMin,
                fontWeight: FontWeight.w800,
                color: AppColors.accentColor),
          )
        ],
      ),
    );
  }
}
