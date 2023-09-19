import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:getlinked_landing_page/core/constants/sizes.dart';
import 'package:getlinked_landing_page/core/ui_util/assets.dart';
import 'package:getlinked_landing_page/core/ui_util/fonts.dart';
import 'package:getlinked_landing_page/core/ui_util/responsive_center.dart';
import 'package:getlinked_landing_page/core/ui_util/screen_util.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/svg_asset_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget_large.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return TimeWidgetLargeScreen(screenWidth: screenWidth);
    } else {
      return Container();
    }
  }
}



