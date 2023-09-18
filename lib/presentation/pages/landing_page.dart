import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/ui_util/responsive_center.dart';
import 'package:getlinked_landing_page/presentation/widgets/home_app_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: const HomeAppBar(),
        body: (screenWidth >= Breakpoint.tablet)
            ? ResponsiveCenter(
                child: Row(
                  children: [
                    Flexible(flex: 5, child: Container(color: Colors.red)),
                    Flexible(flex: 2, child: Container(color: Colors.yellow))
                  ],
                ),
              )
            : Container());
  }
}
