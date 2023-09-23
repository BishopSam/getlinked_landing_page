import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';

import 'faqs_image_widget.dart';
import 'faqs_text_section.dart';
import 'question_mark_widgets.dart';

class FAQsLarge extends StatelessWidget {
  const FAQsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p64),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight(context,
                  percent: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 0.5
                      : 2),
              left: screenWidth(context,
                  percent: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 2.5
                      : 5),
              child: Image.asset(
                PngAsset.star4,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 40),
              left: screenWidth(context, percent: 45),
              child: Image.asset(
                PngAsset.star2,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 20),
              left: screenWidth(context, percent: 48),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 0.2),
              left: screenWidth(context, percent: 55),
              child: Image.asset(
                PngAsset.star3,
              ),
            ),
            Positioned(
              top: screenHeight(context,
                  percent: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 60
                      : 70),
              right: screenWidth(context,
                  percent: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 10
                      : 20),
              child: Image.asset(
                PngAsset.star1,
              ),
            ),
            const QuestionMarkWidget1(),
            const QuestionMarkWidget2(),
            const QuestionMarkWidget3(),
            const FAQsImageWidget(),
            const FAQsTextSection(),
          ],
        ),
      ),
    );
  }
}
