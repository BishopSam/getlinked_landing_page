import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/footer/footer_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/footer/footer_mobile.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return const FooterLarge();
    }
    return const FooterMobile();
  }
}
