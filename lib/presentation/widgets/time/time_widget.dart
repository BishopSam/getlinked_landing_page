import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/ui_util/screen_util.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget_mobile.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key, required this.onRegisterPressed});
  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
   
    if (screenWidth(context) >= Breakpoint.tablet) {
      return TimeWidgetLargeScreen(
        screenWidth: screenWidth(context),
        onRegisterPressed: onRegisterPressed,
      );
    } else {
      return TimeWidgetMobile(
        onRegisterPressed: onRegisterPressed,
      );
    }
  }
}
