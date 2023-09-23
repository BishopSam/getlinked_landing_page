import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class CountDownWidgetLarge extends StatelessWidget {
  const CountDownWidgetLarge({
    Key? key,
    required this.hours,
    required this.minutes,
    required this.seconds,
  }) : super(key: key);

  final String hours;
  final String minutes;
  final String seconds;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: hours,
        style: AppTextStyles.textStyle(fontSize: 48.spMin),
        children: [
          TextSpan(
            text: "H",
            style: AppTextStyles.textStyle(fontSize: 12.spMin),
          ),
          TextSpan(
            text: " $minutes",
            style: AppTextStyles.textStyle(fontSize: 48.spMin),
          ),
          TextSpan(
            text: "M",
            style: AppTextStyles.textStyle(fontSize: 12.spMin),
          ),
          TextSpan(
            text: " $seconds",
            style: AppTextStyles.textStyle(fontSize: 48.spMin),
          ),
          TextSpan(
            text: "S",
            style: AppTextStyles.textStyle(fontSize: 12.spMin),
          )
        ]));
  }
}

/// mobile version of [CountDownWidgetLarge]
class CountDownWidget extends StatelessWidget {
  const CountDownWidget({
    Key? key,
    required this.hours,
    required this.minutes,
    required this.seconds,
  }) : super(key: key);

  final String hours;
  final String minutes;
  final String seconds;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: hours,
        style: AppTextStyles.textStyle(fontSize: 32.spMin),
        children: [
          TextSpan(
            text: "H",
            style: AppTextStyles.textStyle(fontSize: 8.spMin),
          ),
          TextSpan(
            text: " $minutes",
            style: AppTextStyles.textStyle(fontSize: 32.spMin),
          ),
          TextSpan(
            text: "M",
            style: AppTextStyles.textStyle(fontSize: 8.spMin),
          ),
          TextSpan(
            text: " $seconds",
            style: AppTextStyles.textStyle(fontSize: 32.spMin),
          ),
          TextSpan(
            text: "S",
            style: AppTextStyles.textStyle(fontSize: 8.spMin),
          )
        ]));
  }
}
