import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_widget_large.dart';

class PrizesWidget extends StatelessWidget {
  const PrizesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return const PrizesLarge();
    }
    return Container();
  }
}
