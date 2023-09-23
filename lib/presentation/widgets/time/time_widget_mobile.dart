import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/get_linked_text.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/man_with_glasses.dart';

import 'countdown_widget.dart';

class TimeWidgetMobile extends StatelessWidget {
  const TimeWidgetMobile(
      {super.key,
      required this.myDuration,
      required this.minutes,
      required this.seconds,
      required this.hours});
  final Duration? myDuration;
  final String minutes;
  final String seconds;
  final String hours;

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Stack(
        children: [
          Positioned(
              top: screenHeight(context, percent: 2),
              left: screenWidth(context, percent: 10),
              child: const SmallPurpleFlare()),
          Positioned(
              top: screenHeight(context, percent: 25),
              left: screenWidth(context, percent: 50),
              child: const SmallPurpleFlare()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const GetlinkedTextSectionMobile(),
              const Gap(20),
              CountDownWidget(hours: hours, minutes: minutes, seconds: seconds),
              const Gap(20),
              const ManWithGlassWorldWidgetMobile(),
              Container(
                height: 0.2,
                width: screenWidth(context),
                color: AppColors.lightGreyColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
