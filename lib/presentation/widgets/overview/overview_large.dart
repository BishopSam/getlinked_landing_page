import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/overview/overview_details.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';

class OverviewLargeScreen extends StatelessWidget {
  const OverviewLargeScreen({super.key, required this.screenwidth});
  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              const OverviewDetails(),
              Positioned(
                top: screenHeight(context, percent: 20),
                left: screenWidth(context, percent: 5),
                child: Image.asset(
                  PngAsset.star5,
                ),
              ),
              Positioned(
                top: screenHeight(context,
                    percent: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 40
                        : 80),
                left: screenWidth(context, percent: 50),
                child: Image.asset(
                  PngAsset.arrow,
                ),
              ),
              Positioned(
                top: screenHeight(context, percent: 20),
                right: screenWidth(context, percent: 5),
                child: Image.asset(
                  PngAsset.star4,
                ),
              ),
            ],
          ),
          Container(
            height: 0.2,
            width: screenWidth(context),
            color: AppColors.lightGreyColor,
          ),
        ],
      ),
    );
  }
}
