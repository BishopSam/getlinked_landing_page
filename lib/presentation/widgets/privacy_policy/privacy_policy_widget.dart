import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/privacy_policy/privacy_policy_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/privacy_policy/privacy_policy_mobile.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return const PrivvacyPolicyLarge();
    }
    return PrivacyMobile();
  }
}
