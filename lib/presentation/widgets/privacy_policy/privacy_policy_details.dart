import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

import 'privacy_policy_terms_widget.dart';

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
                PrivacyPolicyTermsContainer()
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
