import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/overview/overview_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/overview/overview_mobile.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return OverviewLargeScreen(screenwidth: screenWidth);
    }
    return const OverviewMobile();
  }
}
