import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/faqs/question_mark_widgets.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

import 'faqs_text.dart';

class FAQsMobile extends StatelessWidget {
  const FAQsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.p32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const HeaderTextMobile(
                    firstText: "Frequently Asked", secondText: "Questions"),
                const Gap(10),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "We got answers to the questions that you might \nwant to ask about ",
                    style: AppTextStyles.textStyle(
                      fontSize: 13.spMin,
                    ),
                    children: [
                      TextSpan(
                        text: "getlinked Hackathon 1.0",
                        style: AppTextStyles.textStyle(
                            fontSize: 13.spMin, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const Gap(15),
                const FAQsTextMobile(
                    question: Strings.faq1, answer: Strings.faqAnswer1),
                const Gap(10),
                const FAQsTextMobile(
                    question: Strings.faq2, answer: Strings.faqAnswer2),
                const Gap(10),
                const FAQsTextMobile(
                    question: Strings.faq3, answer: Strings.faqAnswer3),
                const Gap(10),
                const FAQsTextMobile(
                    question: Strings.faq4, answer: Strings.faqAnswer4),
                const Gap(10),
                const FAQsTextMobile(
                    question: Strings.faq5, answer: Strings.faqAnswer5),
                const Gap(30),
                Stack(
                  children: [
                    const QuestionMarkWidget2Mobile(),
                    const QuestionMarkWidget1Mobile(),
                    const QuestionMarkWidget3Mobile(),
                    Column(
                      children: [
                        const Gap(30),
                        Image.asset(
                          PngAsset.faqsImage,
                          width: screenWidth(context, percent: 60),
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ],
                ),
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
