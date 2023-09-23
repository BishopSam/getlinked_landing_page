import 'package:flutter/material.dart';

import 'package:getlinked_landing_page/core/core.dart';

import 'package:getlinked_landing_page/presentation/widgets/rules_and_guidelines/rules_and_guidelines_large.dart';

class RulesandGuidelinesMobile extends StatelessWidget {
  const RulesandGuidelinesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Column(
        children: [
          const RulesandGuidelinesDetailsMobile(),
          Container(
            height: 0.2,
            width: screenWidth(context),
            color: AppColors.lightGreyColor,
          ),
        ],
      ),
    );
  }
}
