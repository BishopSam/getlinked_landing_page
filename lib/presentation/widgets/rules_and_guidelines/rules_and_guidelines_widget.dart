import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/core.dart';

import 'package:getlinked_landing_page/presentation/widgets/rules_and_guidelines/rules_and_guidelines_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/rules_and_guidelines/rules_and_guidelines_mobile_version.dart';

class RulesandGuidelines extends StatelessWidget {
  const RulesandGuidelines({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return const RulesandGuidelinesLarge();
    }
    return const RulesandGuidelinesMobile();
  }
}
