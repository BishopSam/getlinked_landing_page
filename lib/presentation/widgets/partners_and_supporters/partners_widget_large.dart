import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class PartnersLarge extends StatelessWidget {
  const PartnersLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      maxContentWidth: screenWidth(context),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Partners and Supporters",
              style: AppTextStyles.headerTextStyle(fontSize: 32.spMin),
            ),
            const Gap(10),
            Text(
              "Getlinked Hackathon 1.0 is honored to have the following major \ncompanies as its partners and sponsors",
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle(fontSize: 14.spMin),
            ),
            const Gap(50),
            Container(
              padding: EdgeInsets.all(
                  (screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100)
                      ? Sizes.p32
                      : Sizes.p128),
              margin: const EdgeInsets.all(Sizes.p64),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.accentColor),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            child: Image.asset(
                          PngAsset.libertyAssured,
                          height: screenHeight(context, percent: 15),
                          width: screenWidth(context, percent: 15),
                        )),
                        const Gap(20),
                        Container(
                          height: 137,
                          width: 4,
                          color: AppColors.accentColor,
                        ),
                        const Gap(20),
                        Expanded(
                            child: Image.asset(
                          PngAsset.libertyPay,
                          height: screenHeight(context, percent: 15),
                          width: screenWidth(context, percent: 15),
                        )),
                        const Gap(20),
                        Container(
                          height: 137,
                          width: 4,
                          color: AppColors.accentColor,
                        ),
                        const Gap(20),
                        Expanded(
                            child: Image.asset(
                          PngAsset.winwise,
                          height: screenHeight(context, percent: 15),
                          width: screenWidth(context, percent: 15),
                        )),
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 4,
                          child: Container(
                            width: screenWidth(context, percent: 40),
                            height: 4,
                            color: AppColors.accentColor,
                          ),
                        ),
                        const Gap(10),
                        Flexible(
                          flex: 5,
                          child: Container(
                            width: screenWidth(context, percent: 40),
                            height: 4,
                            color: AppColors.accentColor,
                          ),
                        ),
                        const Gap(10),
                        Flexible(
                          flex: 4,
                          child: Container(
                            width: screenWidth(context, percent: 40),
                            height: 4,
                            color: AppColors.accentColor,
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            child: Image.asset(
                          PngAsset.whisperisms,
                          height: screenHeight(context, percent: 15),
                          width: screenWidth(context, percent: 15),
                        )),
                        const Gap(20),
                        Container(
                          height: 137,
                          width: 4,
                          color: AppColors.accentColor,
                        ),
                        const Gap(20),
                        Expanded(
                            child: Image.asset(
                          PngAsset.payBox,
                          height: screenHeight(context, percent: 15),
                          width: screenWidth(context, percent: 15),
                        )),
                        const Gap(20),
                        Container(
                          height: 137,
                          width: 4,
                          color: AppColors.accentColor,
                        ),
                        const Gap(20),
                        Expanded(
                            child: Image.asset(
                          PngAsset.vizualPlus,
                          height: screenHeight(context, percent: 15),
                          width: screenWidth(context, percent: 15),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
