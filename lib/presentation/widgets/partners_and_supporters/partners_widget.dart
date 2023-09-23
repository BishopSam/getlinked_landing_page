import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/partners_and_supporters/partners_widget_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/partners_and_supporters/partners_widget_mobile.dart';

class PartnersWidget extends StatelessWidget {
  const PartnersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return const PartnersLarge();
    }
    return const PartnersMobile();
  }
}
