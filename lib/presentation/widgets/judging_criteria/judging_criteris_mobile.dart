import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

import 'attributes_text.dart';

class JudgingCriteriaMobile extends StatelessWidget {
  const JudgingCriteriaMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  PngAsset.judgingCriteria,
                  fit: BoxFit.fitWidth,
                  width: screenWidth(context, percent: 45),
                ),
                const Gap(10),
                const HeaderTextMobile(
                  firstText: "Judging Criteria",
                  secondText: "Key Attributes",
                ),
                const Gap(10),
                const AttributesTextMobile(
                    attribute: "Innovation and Creativity",
                    attributeExpl: Strings.innovationAndCreativity),
                const Gap(15),
                const AttributesTextMobile(
                    attribute: "Functionality",
                    attributeExpl: Strings.functionality),
                const Gap(15),
                const AttributesTextMobile(
                    attribute: "Impact and Relevance",
                    attributeExpl: Strings.impactAndRelevance),
                const Gap(15),
                const AttributesTextMobile(
                    attribute: "Technical Complexity",
                    attributeExpl: Strings.technicalComplexity),
                const Gap(15),
                const AttributesTextMobile(
                    attribute: "Adherence to Hackathon Rules",
                    attributeExpl: Strings.adherence),
                const Gap(30),
                ButtonWidget(
                  onTap: () {},
                  text: "Read More",
                  width: 152,
                ),
                const Gap(30),
              ],
            ),
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
