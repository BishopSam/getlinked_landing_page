import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';
import 'package:getlinked_landing_page/presentation/widgets/privacy_policy/privacy_policy_terms_widget.dart';

class PrivacyMobile extends StatelessWidget {
  const PrivacyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(20),
            const HeaderTextMobile(
                firstText: "Privacy Policy and", secondText: "Terms"),
            const Gap(10),
            Text(
              "Last updated on September 12, 2023",
              style: AppTextStyles.textStyle(
                  fontSize: 12.spMin, color: AppColors.white.withOpacity(0.5)),
            ),
            const Gap(5),
            Padding(
              padding: const EdgeInsets.all(Sizes.p24),
              child: Text(
                "Below are our privacy & policy, which outline \na lot of goodies. it's our aim to always take of \nour participant",
                textAlign: TextAlign.center,
                style: AppTextStyles.textStyle(fontSize: 12.spMin),
              ),
            ),
            const Gap(20),
            const PrivacyPolicyTermsMobileContainer(),
            const Gap(30),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  PngAsset.privacyLock,
                  width: screenWidth(context, percent: 40),
                  fit: BoxFit.fitWidth,
                ),
                Column(
                  children: [
                    const Gap(80),
                    Image.asset(
                      PngAsset.privacyPolicyMan,
                      width: screenWidth(context, percent: 60),
                      fit: BoxFit.fitWidth,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
