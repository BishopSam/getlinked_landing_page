import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class TimelineInfoWidget extends StatelessWidget {
  const TimelineInfoWidget(
      {super.key,
      required this.date,
      required this.index,
      required this.title,
      required this.description,
      required this.isDateRightSide});

  final String date;
  final String index;
  final String title;
  final String description;
  final bool isDateRightSide;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isDateRightSide) ...[
          LeftSide(date: date, isDateRightSide: true),
          const Gap(20),
          IndexDivider(index: index),
          const Gap(20),
          RightSide(
              title: title, description: description, isDateRightSide: true),
        ] else ...[
          RightSide(
              title: title, description: description, isDateRightSide: false),
          const Gap(20),
          IndexDivider(index: index),
          const Gap(20),
          LeftSide(
            date: date,
            isDateRightSide: false,
          ),
        ]
      ],
    );
  }
}

class IndexDivider extends StatelessWidget {
  const IndexDivider({
    Key? key,
    required this.index,
  }) : super(key: key);

  final String index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 137,
          width: 4,
          color: AppColors.accentColor,
        ),
        const Gap(10),
        Container(
          width: 53,
          height: 53,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppGradients.timelineLinearGradient,
          ),
          child: Center(
            child: Text(
              index,
              style: AppTextStyles.textStyle(
                  fontSize: 24.spMin, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const Gap(15),
      ],
    );
  }
}

class RightSide extends StatelessWidget {
  const RightSide({
    Key? key,
    required this.title,
    required this.description,
    required this.isDateRightSide,
  }) : super(key: key);

  final String title;
  final String description;
  final bool isDateRightSide;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment:
            isDateRightSide ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: isDateRightSide ? TextAlign.left : TextAlign.end,
            style: AppTextStyles.textStyle(
                fontSize: 24.spMin,
                fontWeight: FontWeight.w700,
                color: AppColors.accentColor),
          ),
          const Gap(5),
          Text(
            description,
            textAlign: isDateRightSide ? TextAlign.left : TextAlign.end,
            style: AppTextStyles.textStyle(fontSize: 16.spMin),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key, required this.date, required this.isDateRightSide})
      : super(key: key);

  final String date;
  final bool isDateRightSide;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment:
            isDateRightSide ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: AppTextStyles.textStyle(
                fontSize: 24.spMin,
                color: AppColors.accentColor,
                fontWeight: FontWeight.w700),
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
