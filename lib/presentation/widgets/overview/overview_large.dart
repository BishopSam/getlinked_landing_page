import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class OverviewLargeScreen extends StatelessWidget {
  const OverviewLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            const OverviewDetails(),
            Positioned(
              top: screenHeight(context, percent: 20),
              left: screenWidth(context, percent: 5),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Positioned(
              top: screenHeight(context,
                  percent: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 50
                      : 80),
              left: screenWidth(context, percent: 50),
              child: Image.asset(
                PngAsset.arrow,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 20),
              right: screenWidth(context, percent: 5),
              child: Image.asset(
                PngAsset.star4,
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
    );
  }
}

class OverviewDetails extends StatelessWidget {
  const OverviewDetails({
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
                alignment: Alignment.center,
                children: [
                  Image.asset(PngAsset.bigIdea),
                  Padding(
                    padding: const EdgeInsets.only(top: Sizes.p64),
                    child: Text(
                      "The Big \nIdea!",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.textStyle(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              )),
          const Gap(30),
          Flexible(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Introduction to getlinked\n",
                    style: AppTextStyles.textStyle(
                        fontSize: screenWidth(context) >= Breakpoint.tablet &&
                                screenWidth(context) < 1100
                            ? 24.spMin
                            : 32.spMin,
                        fontWeight: FontWeight.w800),
                    children: [
                      TextSpan(
                        text: "tech Hackathon 1.0",
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
                  Strings.introText,
                  style: AppTextStyles.textStyle(
                    fontSize: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 14.spMin
                        : 16.spMin,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
