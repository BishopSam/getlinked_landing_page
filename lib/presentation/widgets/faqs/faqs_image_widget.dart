import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';

class FAQsImageWidget extends StatelessWidget {
  const FAQsImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight(context,
          percent: screenWidth(context) >= Breakpoint.tablet &&
                  screenWidth(context) < 1100
              ? 30
              : 10),
      left: screenWidth(context,
          percent: screenWidth(context) >= Breakpoint.tablet &&
                  screenWidth(context) < 1100
              ? 55
              : 35),
      child: Image.asset(
        PngAsset.faqsImage,
        height: screenHeight(
          context,
          percent: screenWidth(context) >= Breakpoint.tablet &&
                  screenWidth(context) < 1100
              ? 30
              : 60,
        ),
        width: screenWidth(context,
            percent: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 30
                : 60),
      ),
    );
  }
}


class FAQsImageWidgetMobile extends StatelessWidget {
  const FAQsImageWidgetMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight(context,
          percent: screenWidth(context) >= Breakpoint.tablet &&
                  screenWidth(context) < 1100
              ? 30
              : 10),
      left: screenWidth(context,
          percent: screenWidth(context) >= Breakpoint.tablet &&
                  screenWidth(context) < 1100
              ? 55
              : 35),
      child: Image.asset(
        PngAsset.faqsImage,
        height: screenHeight(
          context,
          percent: screenWidth(context) >= Breakpoint.tablet &&
                  screenWidth(context) < 1100
              ? 30
              : 60,
        ),
        width: screenWidth(context,
            percent: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? 30
                : 60),
      ),
    );
  }
}
