import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

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
                const HeaderText(
                    firstText: "Introduction to getlinked",
                    secondText: "techHackathon 1.0"),
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

/// mobile version of [OverviewDetails]
class OverviewDetailsMobile extends StatelessWidget {
  const OverviewDetailsMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                PngAsset.bigIdea,
                fit: BoxFit.fitWidth,
                width: screenWidth(context, percent: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Sizes.p32),
                child: Text(
                  "The Big \nIdea!",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Image.asset(
            PngAsset.arrow,
            width: 19.46,
            height: 22.82,
          ),
          const Gap(10),
          const HeaderTextMobile(
              firstText: "Introduction to getlinked",
              secondText: "techHackathon 1.0"),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              Strings.introText,
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle(
                fontSize: 13.spMin,
              ),
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
