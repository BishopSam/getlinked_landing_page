import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';

import 'rules_and_guidelines_details.dart';

class RulesandGuidelinesLarge extends StatelessWidget {
  const RulesandGuidelinesLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      maxContentWidth: screenWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              const RulesandGuidelinesDetails(),
              Positioned(
                top: screenHeight(context, percent: 10),
                left: screenWidth(context, percent: 30),
                child: Image.asset(
                  PngAsset.star2,
                ),
              ),
              Positioned(
                top: screenHeight(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 30
                        : 50),
                right: screenWidth(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 30
                        : 50),
                child: Image.asset(
                  PngAsset.star1,
                ),
              ),
            ],
          ),
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
