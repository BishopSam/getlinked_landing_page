import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';

import 'judging_criteria_details.dart';

class JudgingCriteriaLarge extends StatelessWidget {
  const JudgingCriteriaLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: screenHeight(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 2.5
                        : 5),
                left: screenWidth(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 2.5
                        : 5),
                child: Image.asset(
                  PngAsset.star5,
                ),
              ),
              Positioned(
                top: screenHeight(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 20
                        : 40),
                left: screenWidth(context, percent: 20),
                child: Image.asset(
                  PngAsset.star2,
                ),
              ),
              Positioned(
                top: screenHeight(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 40
                        : 60),
                right: screenWidth(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 40
                        : 60),
                child: Image.asset(
                  PngAsset.star1,
                ),
              ),
              const JudgingCriteriaDetails(),
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
