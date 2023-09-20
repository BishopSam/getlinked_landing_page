import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/rules_and_guidelines/rules_and_guidelines_large.dart';

class RulesandGuidelines extends StatelessWidget {
  const RulesandGuidelines({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return RulesandGuidelinesLarge();
    }
    return Container();
  }
}
