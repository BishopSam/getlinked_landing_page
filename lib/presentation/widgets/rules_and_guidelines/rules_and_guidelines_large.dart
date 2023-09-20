import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';

class RulesandGuidelinesLarge extends StatelessWidget {
  const RulesandGuidelinesLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       
        Column(
          children: [
            const RulesandGuidelinesDetails(),
            Container(
              height: 0.2,
              width: screenWidth(context),
              color: AppColors.lightGreyColor,
            ),
          ],
        ),
      ],
    );
  }
}

class RulesandGuidelinesDetails extends StatelessWidget {
  const RulesandGuidelinesDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      maxContentWidth: screenWidth(context),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p64),
        child: Row(
          children: [
            const Gap(20),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Rules and\n",
                      style: AppTextStyles.textStyle(
                          fontSize: screenWidth(context) >= Breakpoint.tablet &&
                                  screenWidth(context) < 1100
                              ? 24.spMin
                              : 32.spMin,
                          fontWeight: FontWeight.w800),
                      children: [
                        TextSpan(
                          text: "Guidelines",
                          style: AppTextStyles.textStyle(
                              fontSize:
                                  screenWidth(context) >= Breakpoint.tablet &&
                                          screenWidth(context) < 1100
                                      ? 24.spMin
                                      : 32.spMin,
                              fontWeight: FontWeight.w800,
                              color: AppColors.accentColor),
                        )
                      ],
                    ),
                  ),
                  const Gap(20),
                  Text(
                    Strings.rulesAndGuidelines,
                    style: AppTextStyles.textStyle(
                      fontSize: screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100
                          ? 14.spMin
                          : 16.spMin,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(30),
            Flexible(
              flex: 4,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                    top: screenHeight(context, percent: 10),
                    right: screenWidth(context, percent: 5),
                    child: Container(
                      height: screenHeight(context, percent: 20),
                      width: screenWidth(context, percent: 20),
                      decoration: const BoxDecoration(
                        gradient: AppGradients.appLinearGradients,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Image.asset(PngAsset.rulesAndGuidelines)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
