import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/core/utils/validators.dart';
import 'package:getlinked_landing_page/domain/models/category.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/svg_asset_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/text_input_widget.dart';

class RegisterMobile extends StatelessWidget {
  const RegisterMobile(
      {super.key,
      required this.teamsNameCtrl,
      required this.emailCtrl,
      required this.phoneCtrl,
      required this.projectCtrl,
      required this.category,
      required this.groupSize,
      required this.categories,
      required this.groupSizes,
      required this.onCategorySelect,
      required this.onGroupSizeSelect,
      required this.formKey,
      required this.onPresseed,
      required this.isTermsAgreed,
      required this.onIsTermsChanged});
  final TextEditingController teamsNameCtrl;
  final TextEditingController emailCtrl;

  final TextEditingController phoneCtrl;
  final TextEditingController projectCtrl;

  final GlobalKey<FormState> formKey;
  final VoidCallback onPresseed;
  final Category? category;
  final int? groupSize;
  final List<Category> categories;
  final List<int> groupSizes;
  final bool isTermsAgreed;
  final Function(Category?)? onCategorySelect;
  final Function(int?)? onGroupSizeSelect;
  final Function(bool?)? onIsTermsChanged;

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
                    const Gap(10),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: const CircleBorder(
                                side:
                                    BorderSide(color: AppColors.accentColor))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.keyboard_arrow_left)),
                    const Gap(10),
                    Text(
                      "Register",
                      style: AppTextStyles.headerTextStyle(
                          fontSize: 20.spMin, color: AppColors.accentColor),
                    ),
                    const Gap(20),
                    Center(
                      child: Image.asset(
                        PngAsset.registerMan,
                        width: screenWidth(context, percent: 30),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const Gap(20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Be part of this movement!",
                          style: AppTextStyles.textStyle(fontSize: 12.spMin),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "🚶‍♀️",
                                  style: AppTextStyles.textStyle(
                                      fontSize: 12.spMin),
                                ),
                                Text(
                                  "🚶",
                                  style: AppTextStyles.textStyle(
                                      fontSize: 12.spMin),
                                ),
                              ],
                            ),
                            const SvgAssetWidget(
                              svgUrl: SvgAsset.dottedLine,
                              height: 2,
                              width: 20,
                              color: AppColors.accentColor,
                            )
                          ],
                        )
                      ],
                    ),
                    const Gap(5),
                    Text(
                      "CREATE YOUR ACCOUNT",
                      style: AppTextStyles.textStyle(
                          fontSize: 20.spMin, fontWeight: FontWeight.w500),
                    ),
                    const Gap(20),
                    Text(
                      "Team's Name",
                      style: AppTextStyles.textStyle(
                          fontSize: 14.spMin, fontWeight: FontWeight.bold),
                    ),
                    const Gap(5),
                    TextInputWidget(
                        controller: teamsNameCtrl,
                        hintText: "Enter the name of your group",
                        validator: (value) => Validators.name(value,
                            message: "Enter your group's name"),
                        hintColor: AppColors.white.withOpacity(0.5)),
                    const Gap(20),
                    Text(
                      "Phone",
                      style: AppTextStyles.textStyle(
                          fontSize: 14.spMin, fontWeight: FontWeight.bold),
                    ),
                    const Gap(5),
                    TextInputWidget(
                        controller: phoneCtrl,
                        hintText: "Enter your phone number",
                        validator: (value) => Validators.message(value,
                            message: "Please enter your phone number"),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        hintColor: AppColors.white.withOpacity(0.5)),
                    const Gap(20),
                    Text(
                      "Email",
                      style: AppTextStyles.textStyle(
                          fontSize: 14.spMin, fontWeight: FontWeight.bold),
                    ),
                    const Gap(5),
                    TextInputWidget(
                        controller: emailCtrl,
                        hintText: "Enter your email address",
                        validator: (value) => Validators.email(value),
                        hintColor: AppColors.white.withOpacity(0.5)),
                    const Gap(20),
                    Text(
                      "Project Topic",
                      style: AppTextStyles.textStyle(
                          fontSize: 14.spMin, fontWeight: FontWeight.bold),
                    ),
                    const Gap(5),
                    TextInputWidget(
                        controller: projectCtrl,
                        hintText: "What is your project topic",
                        validator: (value) => Validators.message(value,
                            message: "Enter your project topic"),
                        hintColor: AppColors.white.withOpacity(0.5)),
                    const Gap(20),
                    SizedBox(
                      height: 80,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Category",
                                  style: AppTextStyles.textStyle(
                                      fontSize: 12.spMin,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Gap(5),
                                Flexible(
                                  flex: 3,
                                  child: AppDropDownButton<Category>(
                                      hint: Text(
                                        "Select Category",
                                        style: AppTextStyles.textStyle(
                                            fontSize: 12.spMin),
                                      ),
                                      validator: (p0) => Validators.message(
                                          p0 == null ? "" : p0.name,
                                          message: "Please select a category"),
                                      onChanged: onCategorySelect,
                                      items: categories
                                          .map<DropdownMenuItem<Category>>(
                                              (e) => DropdownMenuItem<Category>(
                                                    value: e,
                                                    child: Text(
                                                      e.name,
                                                    ),
                                                  ))
                                          .toList(),
                                      value: category),
                                )
                              ],
                            ),
                          ),
                          const Gap(2),
                          Flexible(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Group Size",
                                  style: AppTextStyles.textStyle(
                                      fontSize: 12.spMin,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Gap(5),
                                Flexible(
                                  child: AppDropDownButton<int>(
                                      hint: Text(
                                        "Select",
                                        style: AppTextStyles.textStyle(
                                            fontSize: 12.spMin),
                                      ),
                                      validator: (p0) => Validators.message(
                                          p0 == null ? "" : p0.toString(),
                                          message:
                                              "Please select a group size"),
                                      onChanged: onGroupSizeSelect,
                                      items: groupSizes
                                          .map<DropdownMenuItem<int>>(
                                              (e) => DropdownMenuItem<int>(
                                                    value: e,
                                                    child: Text(
                                                      e.toString(),
                                                    ),
                                                  ))
                                          .toList(),
                                      value: groupSize),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Text(
                        'Please review your registration details before submitting',
                        style: AppTextStyles.italicTextStyle(
                            fontSize: 10.spMin, color: AppColors.pinkColor)),
                    const Gap(10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: isTermsAgreed,
                          onChanged: onIsTermsChanged,
                          activeColor: AppColors.accentColor,
                        ),
                        const Gap(2),
                        SizedBox(
                          width: screenWidth(context, percent: 30),
                          child: Text(
                            "I agree with the event terms and conditions and privacy policy",
                            style: AppTextStyles.textStyle(
                                fontSize: 10.spMin,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Center(
                      child: ButtonWidget(
                        onTap: onPresseed,
                        text: "Submit",
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
