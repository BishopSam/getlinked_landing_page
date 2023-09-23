import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';

import 'privacy_policy_details.dart';

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


