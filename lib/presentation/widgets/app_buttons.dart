// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:getlinked_landing_page/core/ui_util/fonts.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.onTap,
      required this.text,
      this.color,
      this.width})
      : super(key: key);
  final VoidCallback onTap;
  final String text;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      child: Ink(
        width: width ?? double.infinity,
        height: 53,
        decoration: BoxDecoration(
          gradient: AppGradients.appLinearGradients,
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          onTap: onTap,
          splashColor: AppColors.accentColor,
          borderRadius: BorderRadius.circular(4),
          highlightColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Center(
                child: Text(text,
                    style: AppTextStyles.textStyle(
                        fontSize: 16, fontWeight: FontWeight.w400))),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key,
      required this.onTap,
      required this.text,
      this.isBetween = false})
      : super(key: key);
  final VoidCallback onTap;
  final String text;
  final bool isBetween;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      ),
      child: Text(text,
          style: AppTextStyles.textStyle(
            fontSize: 16,
            color: AppColors.white,
          )),
    );
  }
}
