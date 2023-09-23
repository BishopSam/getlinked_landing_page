import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

import 'rules_and_guidelines_details.dart';

class RulesandGuidelinesLarge extends StatelessWidget {
  const RulesandGuidelinesLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
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

/// mobile version of [RulesandGuidelinesLarge]
class RulesandGuidelinesDetailsMobile extends StatelessWidget {
  const RulesandGuidelinesDetailsMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p24),
      child: Column(
        children: [
          Image.asset(
            PngAsset.rulesAndGuidelines,
            fit: BoxFit.fitWidth,
            width: screenWidth(context, percent: 45),
          ),
          const HeaderTextMobile(
            firstText: "Rules and",
            secondText: "Guidelines",
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Strings.rulesAndGuidelines,
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle(
                fontSize: 13.spMin,
              ),
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
