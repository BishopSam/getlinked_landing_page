import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget_large.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    log("screen$screenWidth");
    if (screenWidth >= Breakpoint.tablet) {
      return TimeWidgetLargeScreen(screenWidth: screenWidth);
    } else {
      return Container();
    }
  }
}
