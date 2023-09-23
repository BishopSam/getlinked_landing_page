import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/timeline/time_line_info_widget.dart';

class TimelineMobile extends StatelessWidget {
  TimelineMobile({super.key});

  final timelineList = [
    _TimeLineModel(
        index: "1",
        date: Strings.timelineDate,
        title: Strings.timelineTitle1,
        description: Strings.timelineDesc1),
    _TimeLineModel(
        index: "2",
        date: Strings.timelineDate,
        title: Strings.timelineTitle2,
        description: Strings.timelineDesc2),
    _TimeLineModel(
        index: "3",
        date: Strings.timelineDate,
        title: Strings.timelineTitle3,
        description: Strings.timelineDesc3),
    _TimeLineModel(
        index: "4",
        date: Strings.timelineDate,
        title: Strings.timelineTitle4,
        description: Strings.timelineDesc4),
    _TimeLineModel(
        index: "5",
        date: Strings.timelineDate,
        title: Strings.timelineTitle5,
        description: Strings.timelineDesc5),
    _TimeLineModel(
        index: "6",
        date: Strings.timelineDate,
        title: Strings.timelineTitle6,
        description: Strings.timelineDesc6),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Timeline",
              style: AppTextStyles.headerTextStyle(fontSize: 20.spMin),
            ),
            const Gap(5),
            Text(
              "Here is the breakdown of the time we anticipate \nusing for the upcoming event.",
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle(fontSize: 13.spMin),
            ),
            const Gap(10),
            for (var element in timelineList) ...[
              Center(
                child: TimelineInfoWidgetMobile(
                  date: element.date,
                  index: element.index,
                  title: element.title,
                  description: element.description,
                ),
              ),
              const Gap(2),
            ],
            const Gap(30),
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

  _TimeLineModel({
    required this.index,
    required this.date,
    required this.title,
    required this.description,
  });
}
