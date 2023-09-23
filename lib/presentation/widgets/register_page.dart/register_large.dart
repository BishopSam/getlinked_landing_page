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

class RegisterPageLarge extends StatelessWidget {
  const RegisterPageLarge({
    super.key,
    required this.teamsNameCtrl,
    required this.emailCtrl,
    required this.formKey,
    required this.onPresseed,
    required this.categories,
    required this.category,
    required this.groupSize,
    required this.groupSizes,
    required this.phoneCtrl,
    required this.projectCtrl,
    required this.isTermsAgreed,
    required this.onIsTermsChanged,
    required this.onCategorySelect,
    required this.onGroupSizeSelect,
  });
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
            padding: EdgeInsets.all(screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? Sizes.p24
                : Sizes.p64),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 5,
                  child: Image.asset(PngAsset.registerMan),
                ),
                const Gap(20),
                Flexible(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: Sizes.p24, horizontal: Sizes.p64),
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
                            "Register",
                            style: AppTextStyles.headerTextStyle(
                                fontSize: 32.spMin,
                                color: AppColors.accentColor),
                          ),
                          const Gap(20),
                          SizedBox(
                            width: screenWidth(context, percent: 20),
                            child: screenWidth(context) >= Breakpoint.tablet &&
                                    screenWidth(context) < 1100
                                ? Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Be part of this movement!",
                                        style: AppTextStyles.textStyle(
                                            fontSize: 12.spMin),
                                      ),
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "🚶‍♀️",
                                                  style:
                                                      AppTextStyles.textStyle(
                                                          fontSize: 12.spMin),
                                                ),
                                                Text(
                                                  "🚶",
                                                  style:
                                                      AppTextStyles.textStyle(
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
                                        ),
                                      )
                                    ],
                                  )
                                : Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Be part of this movement!",
                                        style: AppTextStyles.textStyle(
                                            fontSize: 14.spMin),
                                      ),
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "🚶‍♀️",
                                                  style:
                                                      AppTextStyles.textStyle(
                                                          fontSize: 15.spMin),
                                                ),
                                                Text(
                                                  "🚶",
                                                  style:
                                                      AppTextStyles.textStyle(
                                                          fontSize: 15.spMin),
                                                ),
                                              ],
                                            ),
                                            const SvgAssetWidget(
                                              svgUrl: SvgAsset.dottedLine,
                                              height: 2,
                                              color: AppColors.accentColor,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                          ),
                          const Gap(15),
                          Text(
                            "CREATE YOUR ACCOUNT",
                            style: AppTextStyles.textStyle(
                                fontSize: 32.spMin,
                                fontWeight: FontWeight.w500),
                          ),
                          const Gap(20),
                          screenWidth(context) >= Breakpoint.tablet &&
                                  screenWidth(context) < 1100
                              ? FormSectionMedium(
                                  teamsNameCtrl: teamsNameCtrl,
                                  emailCtrl: emailCtrl,
                                  phoneCtrl: phoneCtrl,
                                  projectCtrl: projectCtrl,
                                  categories: categories,
                                  groupSizes: groupSizes,
                                  category: category,
                                  groupSize: groupSize,
                                  onCategorySelect: onCategorySelect,
                                  onGroupSizeSelect: onGroupSizeSelect)
                              : FormSection(
                                  teamsNameCtrl: teamsNameCtrl,
                                  emailCtrl: emailCtrl,
                                  phoneCtrl: phoneCtrl,
                                  projectCtrl: projectCtrl,
                                  categories: categories,
                                  groupSizes: groupSizes,
                                  category: category,
                                  onCategorySelect: onCategorySelect,
                                  onGroupSizeSelect: onGroupSizeSelect,
                                  groupSize: groupSize),
                          const Gap(20),
                          Text(
                              'Please review your registration details before submitting',
                              style: AppTextStyles.italicTextStyle(
                                  fontSize: 12.spMin,
                                  color: AppColors.pinkColor)),
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
                                      fontSize: screenWidth(context) >=
                                                  Breakpoint.tablet &&
                                              screenWidth(context) < 1100
                                          ? 10.spMin
                                          : 12.spMin,
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

class FormSection extends StatelessWidget {
  const FormSection(
      {super.key,
      required this.teamsNameCtrl,
      required this.emailCtrl,
      required this.phoneCtrl,
      required this.projectCtrl,
      required this.categories,
      required this.groupSizes,
      required this.category,
      required this.groupSize,
      required this.onCategorySelect,
      required this.onGroupSizeSelect});
  final TextEditingController teamsNameCtrl;
  final TextEditingController emailCtrl;

  final TextEditingController phoneCtrl;
  final TextEditingController projectCtrl;

  final Category? category;
  final int? groupSize;
  final List<Category> categories;
  final List<int> groupSizes;
  final Function(Category?)? onCategorySelect;
  final Function(int?)? onGroupSizeSelect;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Team's Name",
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Flexible(
                  child: TextInputWidget(
                      controller: teamsNameCtrl,
                      hintText: "Enter the name of your group",
                      validator: (value) => Validators.name(value,
                          message: "Enter your group's name"),
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(20),
                Text(
                  "Email",
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Flexible(
                  child: TextInputWidget(
                      controller: emailCtrl,
                      hintText: "Enter your email address",
                      validator: (value) => Validators.email(value),
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(20),
                Text(
                  "Category",
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Flexible(
                  child: AppDropDownButton<Category>(
                      hint: Text(
                        "Select Category",
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
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
          const Gap(5),
          Flexible(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Phone",
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Flexible(
                  child: TextInputWidget(
                      controller: phoneCtrl,
                      hintText: "Enter your phone number",
                      validator: (value) => Validators.message(value,
                          message: "Please enter your phone number"),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(20),
                Text(
                  "Project Topic",
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Flexible(
                  child: TextInputWidget(
                      controller: projectCtrl,
                      hintText: "What is your project topic",
                      validator: (value) => Validators.message(value,
                          message: "Enter your project topic"),
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(20),
                Text(
                  "Group Size",
                  style: AppTextStyles.textStyle(
                      fontSize: 14.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Flexible(
                  child: AppDropDownButton<int>(
                      hint: Text(
                        "Select",
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
                      ),
                      validator: (p0) => Validators.message(
                          p0 == null ? "" : p0.toString(),
                          message: "Please select a group size"),
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
          )
        ],
      ),
    );
  }
}

class FormSectionMedium extends StatelessWidget {
  const FormSectionMedium(
      {super.key,
      required this.teamsNameCtrl,
      required this.emailCtrl,
      required this.phoneCtrl,
      required this.projectCtrl,
      required this.categories,
      required this.groupSizes,
      required this.category,
      required this.groupSize,
      required this.onCategorySelect,
      required this.onGroupSizeSelect});
  final TextEditingController teamsNameCtrl;
  final TextEditingController emailCtrl;

  final TextEditingController phoneCtrl;
  final TextEditingController projectCtrl;

  final Category? category;
  final int? groupSize;
  final List<Category> categories;
  final List<int> groupSizes;
  final Function(Category?)? onCategorySelect;
  final Function(int?)? onGroupSizeSelect;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Team's Name",
                  style: AppTextStyles.textStyle(
                      fontSize: 12.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(2),
                Flexible(
                  child: TextInputWidget(
                      controller: teamsNameCtrl,
                      hintText: "Enter the name of your group",
                      validator: (value) => Validators.name(value,
                          message: "Enter your group's name"),
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(10),
                Text(
                  "Email",
                  style: AppTextStyles.textStyle(
                      fontSize: 12.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Flexible(
                  child: TextInputWidget(
                      controller: emailCtrl,
                      hintText: "Enter your email address",
                      validator: (value) => Validators.email(value),
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(10),
                Text(
                  "Category",
                  style: AppTextStyles.textStyle(
                      fontSize: 12.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(2),
                Flexible(
                  child: AppDropDownButton<Category>(
                      hint: Text(
                        "Select Category",
                        style: AppTextStyles.textStyle(fontSize: 10.spMin),
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
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Phone",
                  style: AppTextStyles.textStyle(
                      fontSize: 12.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(2),
                Flexible(
                  child: TextInputWidget(
                      controller: phoneCtrl,
                      hintText: "Enter your phone number",
                      validator: (value) => Validators.message(value,
                          message: "Please enter your phone number"),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(10),
                Text(
                  "Project Topic",
                  style: AppTextStyles.textStyle(
                      fontSize: 12.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(2),
                Flexible(
                  child: TextInputWidget(
                      controller: projectCtrl,
                      hintText: "What is your project topic",
                      validator: (value) => Validators.message(value,
                          message: "Enter your project topic"),
                      hintColor: AppColors.white.withOpacity(0.5)),
                ),
                const Gap(10),
                Text(
                  "Group Size",
                  style: AppTextStyles.textStyle(
                      fontSize: 12.spMin, fontWeight: FontWeight.bold),
                ),
                const Gap(2),
                Flexible(
                  child: AppDropDownButton<int>(
                      hint: Text(
                        "Select",
                        style: AppTextStyles.textStyle(fontSize: 10.spMin),
                      ),
                      validator: (p0) => Validators.message(
                          p0 == null ? "" : p0.toString(),
                          message: "Please select a group size"),
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
          )
        ],
      ),
    );
  }
}
