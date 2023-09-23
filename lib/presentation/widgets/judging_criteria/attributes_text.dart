import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class AttributesText extends StatelessWidget {
  const AttributesText({super.key, required this.attribute, required this.attributeExpl});
  final String attribute;
  final String attributeExpl;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "$attribute:",
          style: AppTextStyles.textStyle(
              fontSize: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? 14.spMin
                  : 16.spMin,
              color: AppColors.pinkColor,
              fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: " $attributeExpl",
              style: AppTextStyles.textStyle(
                  fontSize: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 14.spMin
                      : 16.spMin,
                  color: AppColors.white,
                  fontWeight: FontWeight.w400),
            ),
          ]),
    );
  }
}

class AttributesTextMobile extends StatelessWidget {
  const AttributesTextMobile({super.key, required this.attribute, required this.attributeExpl});
  final String attribute;
  final String attributeExpl;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "$attribute:",
          style: AppTextStyles.textStyle(
              fontSize: 13.spMin,
              color: AppColors.pinkColor,
              fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: " $attributeExpl",
              style: AppTextStyles.textStyle(
                  fontSize: 13.spMin,
                  color: AppColors.white,
                  fontWeight: FontWeight.w400),
            ),
          ]),
    );
  }
}
