import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';
import 'package:getlinked_landing_page/presentation/widgets/judging_criteria/attributes_text.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';

class JudgingCriteriaLarge extends StatelessWidget {
  const JudgingCriteriaLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      maxContentWidth: screenWidth(context),
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
              Positioned(
                  top: screenHeight(context, percent: 30),
                  right: screenWidth(context, percent: 60),
                  child: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? const SmallPurpleFlare()
                      : const BigPurpleFlare()),
              const JudgingCriteriaDetails(),
            ],
          ),
        ],
      ),
    );
  }
}

class JudgingCriteriaDetails extends StatelessWidget {
  const JudgingCriteriaDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p64),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 4,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  bottom: screenHeight(context,
                      percent: (screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100)
                          ? 24
                          : 45.5),
                  left: screenWidth(context,
                      percent: (screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100)
                          ? 6
                          : 4),
                  child: Container(
                    height: screenHeight(context,
                        percent: (screenWidth(context) >= Breakpoint.tablet &&
                                screenWidth(context) < 1100)
                            ? 5
                            : 10),
                    width: screenWidth(context,
                        percent: (screenWidth(context) >= Breakpoint.tablet &&
                                screenWidth(context) < 1100)
                            ? 5
                            : 10),
                    decoration: const BoxDecoration(
                      gradient: AppGradients.appLinearGradients,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Gap(15),
                    Image.asset(PngAsset.judgingCriteria),
                  ],
                ),
              ],
            ),
          ),
          const Gap(30),
          Flexible(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderText(
                    firstText: "Judging Criteria",
                    secondText: "Key attributes"),
                const Gap(20),
                const AttributesText(
                    attribute: "Innovation and Creativity",
                    attributeExpl: Strings.innovationAndCreativity),
                const Gap(15),
                const AttributesText(
                    attribute: "Functionality",
                    attributeExpl: Strings.functionality),
                const Gap(15),
                const AttributesText(
                    attribute: "Impact and Relevance",
                    attributeExpl: Strings.impactAndRelevance),
                const Gap(15),
                const AttributesText(
                    attribute: "Technical Complexity",
                    attributeExpl: Strings.technicalComplexity),
                const Gap(15),
                const AttributesText(
                    attribute: "Adherence to Hackathon Rules",
                    attributeExpl: Strings.adherence),
                const Gap(30),
                ButtonWidget(
                  onTap: () {},
                  text: "Read More",
                  width: 172,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
