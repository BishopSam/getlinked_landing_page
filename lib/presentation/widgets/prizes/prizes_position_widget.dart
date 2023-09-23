import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class PrizePositionWidget extends StatelessWidget {
  const PrizePositionWidget({
    Key? key,
    required this.position,
    required this.prizeMoney,
    required this.assetPath,
    required this.isFirst,
  }) : super(key: key);
  final String position;
  final String prizeMoney;
  final String assetPath;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        if ((screenWidth(context) >= Breakpoint.tablet &&
            screenWidth(context) < 1100)) ...[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(isFirst ? 50 : 40),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.accentColor),
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.prizesCardColor),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gap(isFirst ? 60 : 40),
                      Text(
                        position,
                        style: AppTextStyles.textStyle(
                            fontSize: 18.spMin, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Runner",
                        style: AppTextStyles.textStyle(
                            fontSize: 12.spMin, fontWeight: FontWeight.w600),
                      ),
                      const Gap(5),
                      Text(
                        prizeMoney,
                        style: AppTextStyles.textStyle(
                            fontSize: 17.spMin,
                            fontWeight: FontWeight.w700,
                            color: AppColors.accentColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            assetPath,
            width: isFirst ? 148 : 90,
            height: isFirst ? 148 : 90,
          )
        ] else ...[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(isFirst ? 100 : 80),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.accentColor),
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.prizesCardColor),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gap(isFirst ? 120 : 80),
                      Text(
                        position,
                        style: AppTextStyles.textStyle(
                            fontSize: 36.spMin, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Runner",
                        style: AppTextStyles.textStyle(
                            fontSize: 24.spMin, fontWeight: FontWeight.w600),
                      ),
                      const Gap(10),
                      Text(
                        prizeMoney,
                        style: AppTextStyles.textStyle(
                            fontSize: 37.spMin,
                            fontWeight: FontWeight.w700,
                            color: AppColors.accentColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            assetPath,
            width: isFirst ? 296 : 179,
            height: isFirst ? 296 : 180,
          )
        ]
      ],
    );
  }
}

class PrizePositionWidgetMobile extends StatelessWidget {
  const PrizePositionWidgetMobile({
    Key? key,
    required this.position,
    required this.prizeMoney,
    required this.assetPath,
    required this.isFirst,
  }) : super(key: key);
  final String position;
  final String prizeMoney;
  final String assetPath;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(isFirst ? 60 : 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.accentColor),
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.prizesCardColor),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Gap(40),
                    Text(
                      position,
                      style: AppTextStyles.textStyle(
                          fontSize: 14.spMin, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Runner",
                      style: AppTextStyles.textStyle(
                          fontSize: 12.spMin, fontWeight: FontWeight.w600),
                    ),
                    const Gap(10),
                    Text(
                      prizeMoney,
                      style: AppTextStyles.textStyle(
                          fontSize: 14.spMin,
                          fontWeight: FontWeight.w700,
                          color: AppColors.accentColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Image.asset(
          assetPath,
          width: isFirst ? 125 : 76,
          height: isFirst ? 125 : 76,
        )
      ],
    );
  }
}
