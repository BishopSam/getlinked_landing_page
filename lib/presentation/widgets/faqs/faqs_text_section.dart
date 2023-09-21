import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';

import '../header_text.dart';
import 'faqs_text.dart';

class FAQsTextSection extends StatelessWidget {
  const FAQsTextSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context, percent: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30),
          const HeaderText(
              firstText: "Frequently Asked", secondText: "Questions"),
          const Gap(15),
          RichText(
            text: TextSpan(
              text:
                  "We got answers to the questions that you might \nwant to ask about ",
              style: AppTextStyles.textStyle(
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: "getlinked Hackathon 1.0",
                  style: AppTextStyles.textStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Gap(50),
          const FAQsText(question: Strings.faq1, answer: Strings.faqAnswer1),
          const Gap(20),
          const FAQsText(question: Strings.faq2, answer: Strings.faqAnswer2),
          const Gap(20),
          const FAQsText(question: Strings.faq3, answer: Strings.faqAnswer3),
          const Gap(20),
          const FAQsText(question: Strings.faq4, answer: Strings.faqAnswer4),
          const Gap(20),
          const FAQsText(question: Strings.faq5, answer: Strings.faqAnswer5),
          const Gap(20),
        ],
      ),
    );
  }
}
