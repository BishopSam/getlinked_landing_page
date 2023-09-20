import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

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

class RulesandGuidelinesDetails extends StatelessWidget {
  const RulesandGuidelinesDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p64),
      child: Row(
        children: [
          const Gap(20),
          Flexible(
            flex: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderText(
                  firstText: "Rules and",
                  secondText: "Guidelines",
                ),
                const Gap(20),
                Text(
                  Strings.rulesAndGuidelines,
                  style: AppTextStyles.textStyle(
                    fontSize: (screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100)
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
                  top: screenHeight(context,
                      percent: (screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100)
                          ? 5
                          : 7),
                  right: screenWidth(context,
                      percent: (screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100)
                          ? 7
                          : 3),
                  child: Container(
                    height: screenHeight(context,
                        percent: (screenWidth(context) >= Breakpoint.tablet &&
                                screenWidth(context) < 1100)
                            ? 5
                            : 15),
                    width: screenWidth(context,
                        percent: (screenWidth(context) >= Breakpoint.tablet &&
                                screenWidth(context) < 1100)
                            ? 5
                            : 15),
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
    );
  }
}
