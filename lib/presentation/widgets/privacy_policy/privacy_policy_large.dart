import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

class PrivvacyPolicyLarge extends StatelessWidget {
  const PrivvacyPolicyLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Stack(
        children: [
          Positioned(
            top: screenHeight(context, percent: 5),
            left: screenWidth(context, percent: 15),
            child: Image.asset(
              PngAsset.star5,
            ),
          ),
          Positioned(
            top: screenHeight(context, percent: 25),
            left: screenWidth(context, percent: 60),
            child: Image.asset(
              PngAsset.star5,
            ),
          ),
          Positioned(
            top: screenHeight(context, percent: 80),
            left: screenWidth(context, percent: 57),
            child: Image.asset(
              PngAsset.star1,
            ),
          ),
          const PrivacyPolicyDetails(),
        ],
      ),
    );
  }
}

class PrivacyPolicyDetails extends StatelessWidget {
  const PrivacyPolicyDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p64),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(screenWidth(context) >= Breakpoint.tablet &&
                  screenWidth(context) < 1100
              ? 10
              : 20),
          Flexible(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(15),
                const HeaderText(
                    firstText: "Privacy Policy and", secondText: "Terms"),
                const Gap(10),
                Text(
                  "Last updated on September 12, 2023",
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin,
                      color: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(20),
                Text(
                  "Below are our privacy & policy, which outline a lot of goodies. \nit's our aim to always take of our participant",
                  style: AppTextStyles.textStyle(fontSize: 14.spMin),
                ),
                const Gap(50),
                Container(
                  width: screenWidth(context, percent: 35),
                  padding: EdgeInsets.all(
                      screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100
                          ? Sizes.p32
                          : Sizes.p64),
                  decoration: BoxDecoration(
                      color: const Color(0x07D9D9D9),
                      border: Border.all(color: AppColors.accentColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.privacyPolicyPreamble,
                          maxLines: 6,
                          style: AppTextStyles.textStyle(
                              fontSize:
                                  screenWidth(context) >= Breakpoint.tablet &&
                                          screenWidth(context) < 1100
                                      ? 12.spMin
                                      : 14.spMin),
                        ),
                        const Gap(20),
                        Text(
                          "Licensing Policy",
                          style: AppTextStyles.textStyle(
                            fontSize: 16.spMin,
                            color: AppColors.accentColor,
                          ),
                        ),
                        const Gap(10),
                        Text(
                          "Here are terms of our Standard License:",
                          maxLines: 5,
                          style: AppTextStyles.textStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const Gap(10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(PngAsset.listTermsClick),
                            const Gap(5),
                            Flexible(
                              child: Text(
                                "The Standard License grants you a non-exclusive right to navigate and register for our event",
                                maxLines: 5,
                                style: AppTextStyles.textStyle(
                                  fontSize: screenWidth(context) >=
                                              Breakpoint.tablet &&
                                          screenWidth(context) < 1100
                                      ? 12.spMin
                                      : 14.spMin,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Gap(5),
                        Row(
                          children: [
                            Image.asset(PngAsset.listTermsClick),
                            const Gap(5),
                            Flexible(
                              child: Text(
                                "The Standard License grants you a non-exclusive right to navigate and register for our event",
                                maxLines: 5,
                                style: AppTextStyles.textStyle(
                                  fontSize: screenWidth(context) >=
                                              Breakpoint.tablet &&
                                          screenWidth(context) < 1100
                                      ? 12.spMin
                                      : 14.spMin,
                                ),
                              ),
                            )
                          ],
                        ),
                        Gap(screenWidth(context) >= Breakpoint.tablet &&
                                screenWidth(context) < 1100
                            ? 10
                            : 20),
                        Center(
                          child: ButtonWidget(
                            onTap: () {},
                            text: "Read More",
                            width: 172,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Gap(20),
          Flexible(
            flex: 5,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  PngAsset.privacyLock,
                  width: screenWidth(context, percent: 50),
                  height: screenHeight(context, percent: 70),
                ),
                Column(
                  children: [
                    const Gap(80),
                    Image.asset(PngAsset.privacyPolicyMan,
                        width: screenWidth(context, percent: 60),
                        height: screenHeight(context, percent: 80))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
