import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/core/utils/validators.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/text_input_widget.dart';

class ContactPageMobile extends StatelessWidget {
  const ContactPageMobile(
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
    return Stack(
      children: [
        Positioned(
            top: screenHeight(context, percent: 10),
            right: screenWidth(context, percent: 70),
            child: const SmallPurpleFlare()),
        Positioned(
            top: screenHeight(context, percent: 60),
            left: screenWidth(context, percent: 70),
            child: const SmallPurpleFlare()),
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
        ResponsiveCenter(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.p64),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: const CircleBorder(
                                side:
                                    BorderSide(color: AppColors.accentColor))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.keyboard_arrow_left)),
                    const Gap(20),
                    Text(
                      "Questions or need \nassistance? \nLet us know  about it!",
                      style: AppTextStyles.headerTextStyle(
                          fontSize: 20.spMin, color: AppColors.accentColor),
                    ),
                    const Gap(20),
                    Text(
                      "Email us below to any question related to our event",
                      style: AppTextStyles.textStyle(
                          fontSize: 12.spMin, color: AppColors.white),
                    ),
                    const Gap(20),
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
                        width: 152,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
