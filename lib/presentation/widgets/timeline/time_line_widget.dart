import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/timeline/time_line_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/timeline/time_line_mobile.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return TimelineLarge();
    }
    return TimelineMobile();
  }
}
