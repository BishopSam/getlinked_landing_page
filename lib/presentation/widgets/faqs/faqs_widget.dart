import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/faqs/faqs_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/faqs/faqs_mobile.dart';

class FAQsWidget extends StatelessWidget {
  const FAQsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return Column(
        children: [
          const FAQsLarge(),
          Container(
            height: 0.2,
            width: screenWidth,
            color: AppColors.lightGreyColor,
          ),
        ],
      );
    }
    return FAQsMobile();
  }
}
