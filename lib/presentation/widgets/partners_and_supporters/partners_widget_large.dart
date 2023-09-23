import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';

class PartnersLarge extends StatelessWidget {
  const PartnersLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Column(
        children: [
          const PartnersDetails(),
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

class PartnersDetails extends StatelessWidget {
  const PartnersDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: screenHeight(context, percent: 5),
            right: screenWidth(context, percent: 60),
            child: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? const SmallPurpleFlare()
                : const BigPurpleFlare()),
        Positioned(
          top: screenHeight(context, percent: 17),
          left: screenWidth(context, percent: 15),
          child: Image.asset(
            PngAsset.star5,
          ),
        ),
        Positioned(
          top: screenHeight(context, percent: 25),
          left: screenWidth(context, percent: 60),
          child: Image.asset(
            PngAsset.star5,
          ),
        ),
        Positioned(
          top: screenHeight(context, percent: 80),
          left: screenWidth(context, percent: 57),
          child: Image.asset(
            PngAsset.star1,
          ),
        ),
        Padding(
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
              const PartnersBox(),
            ],
          ),
        ),
      ],
    );
  }
}

class PartnersBox extends StatelessWidget {
  const PartnersBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all((screenWidth(context) >= Breakpoint.tablet &&
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
                Flexible(
                    flex: 4,
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
                Flexible(
                    flex: 4,
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
                Flexible(
                    flex: 4,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    width: screenWidth(context, percent: 40),
                    height: 4,
                    color: AppColors.accentColor,
                  ),
                ),
                const Gap(15),
                Flexible(
                  flex: 5,
                  child: Container(
                    width: screenWidth(context, percent: 40),
                    height: 4,
                    color: AppColors.accentColor,
                  ),
                ),
                const Gap(15),
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
                Flexible(
                    flex: 4,
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
                Flexible(
                    flex: 4,
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
                Flexible(
                    flex: 4,
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
    );
  }
}

class PartnersBoxMobile extends StatelessWidget {
  const PartnersBoxMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p32),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.accentColor),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  PngAsset.libertyAssured,
                  height: screenHeight(context, percent: 15),
                  width: screenWidth(context, percent: 15),
                ),
                const Gap(15),
                Container(
                  height: screenHeight(context, percent: 10),
                  width: 4,
                  color: AppColors.accentColor,
                ),
                const Gap(15),
                Image.asset(
                  PngAsset.libertyPay,
                  height: screenHeight(context, percent: 15),
                  width: screenWidth(context, percent: 15),
                ),
                const Gap(15),
                Container(
                  height: screenHeight(context, percent: 10),
                  width: 4,
                  color: AppColors.accentColor,
                ),
                const Gap(15),
                Image.asset(
                  PngAsset.winwise,
                  height: screenHeight(context, percent: 15),
                  width: screenWidth(context, percent: 15),
                ),
              ],
            ),
            const Gap(2),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Gap(5),
                Container(
                  width: screenWidth(context, percent: 20),
                  height: 4,
                  color: AppColors.accentColor,
                ),
                const Gap(20),
                Container(
                  width: screenWidth(context, percent: 20),
                  height: 4,
                  color: AppColors.accentColor,
                ),
                const Gap(20),
                Container(
                  width: screenWidth(context, percent: 20),
                  height: 4,
                  color: AppColors.accentColor,
                ),
                const Gap(5),
              ],
            ),
            const Gap(2),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                    flex: 4,
                    child: Image.asset(
                      PngAsset.whisperisms,
                      height: screenHeight(context, percent: 15),
                      width: screenWidth(context, percent: 15),
                    )),
                const Gap(15),
                Container(
                  height: screenHeight(context, percent: 10),
                  width: 4,
                  color: AppColors.accentColor,
                ),
                const Gap(15),
                Image.asset(
                  PngAsset.payBox,
                  height: screenHeight(context, percent: 15),
                  width: screenWidth(context, percent: 15),
                ),
                const Gap(15),
                Container(
                  height: screenHeight(context, percent: 10),
                  width: 4,
                  color: AppColors.accentColor,
                ),
                const Gap(15),
                Image.asset(
                  PngAsset.vizualPlus,
                  height: screenHeight(context, percent: 15),
                  width: screenWidth(context, percent: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
