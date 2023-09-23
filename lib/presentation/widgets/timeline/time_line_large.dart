// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/timeline/time_line_info_widget.dart';

class TimelineLarge extends StatelessWidget {
  TimelineLarge({super.key});

  final timelineList = [
    _TimeLineModel(
        index: "1",
        isDateRightSide: false,
        date: Strings.timelineDate,
        title: Strings.timelineTitle1,
        description: Strings.timelineDesc1),
    _TimeLineModel(
        index: "2",
        isDateRightSide: true,
        date: Strings.timelineDate,
        title: Strings.timelineTitle2,
        description: Strings.timelineDesc2),
    _TimeLineModel(
        index: "3",
        isDateRightSide: false,
        date: Strings.timelineDate,
        title: Strings.timelineTitle3,
        description: Strings.timelineDesc3),
    _TimeLineModel(
        index: "4",
        isDateRightSide: true,
        date: Strings.timelineDate,
        title: Strings.timelineTitle4,
        description: Strings.timelineDesc4),
    _TimeLineModel(
        index: "5",
        isDateRightSide: false,
        date: Strings.timelineDate,
        title: Strings.timelineTitle5,
        description: Strings.timelineDesc5),
    _TimeLineModel(
        index: "6",
        isDateRightSide: true,
        date: Strings.timelineDate,
        title: Strings.timelineTitle6,
        description: Strings.timelineDesc6),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p64),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight(context,
                  percent: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 0.5
                      : 2),
              left: screenWidth(context,
                  percent: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 2.5
                      : 5),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 75),
              left: screenWidth(context, percent: 75),
              child: Image.asset(
                PngAsset.star1,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 150),
              left: screenWidth(context, percent: 5),
              child: Image.asset(
                PngAsset.star2,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Timeline",
                    style: AppTextStyles.headerTextStyle(fontSize: 32.spMin),
                  ),
                ),
                const Gap(10),
                Center(
                  child: Text(
                    "Here is the breakdown of the time we anticipate \nusing for the upcoming event.",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.textStyle(fontSize: 14.spMin),
                  ),
                ),
                const Gap(40),
                for (var element in timelineList) ...[
                  Center(
                    child: TimelineInfoWidget(
                        date: element.date,
                        index: element.index,
                        title: element.title,
                        description: element.description,
                        isDateRightSide: element.isDateRightSide),
                  )
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TimeLineModel {
  final String index;
  final String date;
  final String title;
  final String description;
  final bool isDateRightSide;
  _TimeLineModel({
    required this.index,
    required this.date,
    required this.isDateRightSide,
    required this.title,
    required this.description,
  });
}
