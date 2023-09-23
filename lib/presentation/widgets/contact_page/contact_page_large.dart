import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/core/utils/validators.dart';

import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/svg_asset_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/text_input_widget.dart';

class ContactPageLarge extends StatelessWidget {
  const ContactPageLarge(
      {super.key,
      required this.firstNameController,
      required this.emailCtrl,
      required this.messageCtrl,
      required this.formKey,
      required this.onPresseed});
  final TextEditingController firstNameController;
  final TextEditingController emailCtrl;
  final TextEditingController messageCtrl;
  final GlobalKey<FormState> formKey;
  final VoidCallback onPresseed;
  
  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Stack(
        children: [
          Positioned(
              top: screenHeight(context, percent: 10),
              right: screenWidth(context, percent: 70),
              child: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? const SmallPurpleFlare()
                  : const BigPurpleFlare()),
          Positioned(
              top: screenHeight(context, percent: 60),
              left: screenWidth(context, percent: 70),
              child: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? const SmallPurpleFlare()
                  : const BigPurpleFlare()),
          Positioned(
            top: screenHeight(context, percent: 15),
            left: screenWidth(context, percent: 15),
            child: Image.asset(
              PngAsset.star5,
            ),
          ),
          Positioned(
            top: screenHeight(context, percent: 70),
            left: screenWidth(context, percent: 40),
            child: Image.asset(
              PngAsset.star5,
            ),
          ),
          Positioned(
            top: screenHeight(context, percent: 80),
            left: screenWidth(context, percent: 10),
            child: Image.asset(
              PngAsset.star2,
            ),
          ),
          Positioned(
            top: screenHeight(context, percent: 15),
            left: screenWidth(context, percent: 80),
            child: Image.asset(
              PngAsset.star2,
            ),
          ),
          Positioned(
            top: screenHeight(context, percent: 90),
            left: screenWidth(context, percent: 90),
            child: Image.asset(
              PngAsset.star1,
              height: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Sizes.p64, horizontal: Sizes.p128),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Get in touch",
                        style: AppTextStyles.headerTextStyle(
                            fontSize: 32.spMin, color: AppColors.accentColor),
                      ),
                      const Gap(15),
                      Text(
                        "Contact \nInformation",
                        style: AppTextStyles.textStyle(
                          fontSize: 16.spMin,
                        ),
                      ),
                      const Gap(15),
                      Text(
                        "27, Alara Street \nYaba 100012 \nLagos State",
                        style: AppTextStyles.textStyle(
                          fontSize: 16.spMin,
                        ),
                      ),
                      const Gap(15),
                      Text(
                        "Call Us : 07067981819",
                        style: AppTextStyles.textStyle(
                          fontSize: 16.spMin,
                        ),
                      ),
                      const Gap(15),
                      Text(
                        "we are open from Monday-Friday 08:00am - 05:00pm",
                        style: AppTextStyles.textStyle(
                          fontSize: 16.spMin,
                        ),
                      ),
                      const Gap(30),
                      Text(
                        "Share On",
                        style: AppTextStyles.textStyle(
                            fontSize: 16.spMin, color: AppColors.accentColor),
                      ),
                      const Gap(15),
                      Row(
                        children: const [
                          SvgAssetWidget(svgUrl: SvgAsset.instagram),
                          Gap(3),
                          SvgAssetWidget(svgUrl: SvgAsset.x),
                          Gap(3),
                          SvgAssetWidget(svgUrl: SvgAsset.facebook),
                          Gap(3),
                          SvgAssetWidget(svgUrl: SvgAsset.linkedin),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Flexible(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: Sizes.p32, horizontal: Sizes.p64),
                    margin: const EdgeInsets.symmetric(vertical: Sizes.p64),
                    decoration: BoxDecoration(
                      color: AppColors.accentColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                        child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Questions or need assistance? \nLet us know  about it!",
                            style: AppTextStyles.headerTextStyle(
                                fontSize: 20.spMin,
                                color: AppColors.accentColor),
                          ),
                          const Gap(25),
                          TextInputWidget(
                              controller: firstNameController,
                              hintText: "First Name",
                              validator: (value) => Validators.name(value),
                              hintColor: AppColors.white),
                          const Gap(25),
                          TextInputWidget(
                              controller: emailCtrl,
                              hintText: "Mail",
                              validator: (value) => Validators.email(value),
                              hintColor: AppColors.white),
                          const Gap(25),
                          TextInputWidget(
                              controller: messageCtrl,
                              hintText: "Message",
                              noOfLines: 5,
                              validator: (value) => Validators.message(value),
                              hintColor: AppColors.white),
                          const Gap(25),
                          Center(
                            child: ButtonWidget(
                              onTap: onPresseed,
                              text: "Submit",
                              width: 172,
                            ),
                          )
                        ],
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
