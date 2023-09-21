import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';

import '../header_text.dart';
import 'attributes_text.dart';

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
