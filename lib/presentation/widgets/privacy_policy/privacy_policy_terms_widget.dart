import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';

class PrivacyPolicyTermsContainer extends StatelessWidget {
  const PrivacyPolicyTermsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, percent: 35),
      padding: EdgeInsets.all(screenWidth(context) >= Breakpoint.tablet &&
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
              maxLines: 10,
              style: AppTextStyles.textStyle(
                  fontSize: screenWidth(context) >= Breakpoint.tablet &&
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
                      fontSize: screenWidth(context) >= Breakpoint.tablet &&
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
                      fontSize: screenWidth(context) >= Breakpoint.tablet &&
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
    );
  }
}

class PrivacyPolicyTermsMobileContainer extends StatelessWidget {
  const PrivacyPolicyTermsMobileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, percent: 65),
      padding: const EdgeInsets.all(Sizes.p24),
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
              textAlign: TextAlign.center,
              maxLines: 10,
              style: AppTextStyles.textStyle(fontSize: 12.spMin),
            ),
            const Gap(20),
            Text(
              "Licensing Policy",
              style: AppTextStyles.textStyle(
                fontSize: 14.spMin,
                color: AppColors.accentColor,
              ),
            ),
            const Gap(10),
            Text(
              "Here are terms of our Standard License:",
              maxLines: 5,
              style: AppTextStyles.textStyle(
                  fontSize: 12.spMin, fontWeight: FontWeight.bold),
            ),
            const Gap(15),
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
                      fontSize: 12.spMin,
                    ),
                  ),
                )
              ],
            ),
            const Gap(10),
            Row(
              children: [
                Image.asset(PngAsset.listTermsClick),
                const Gap(5),
                Flexible(
                  child: Text(
                    "The Standard License grants you a non-exclusive right to navigate and register for our event",
                    maxLines: 5,
                    style: AppTextStyles.textStyle(
                      fontSize: 12.spMin,
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            Center(
              child: ButtonWidget(
                onTap: () {},
                text: "Read More",
                width: 152,
              ),
            )
          ],
        ),
      ),
    );
  }
}
