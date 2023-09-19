import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:getlinked_landing_page/core/constants/sizes.dart';
import 'package:getlinked_landing_page/core/ui_util/fonts.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/more_menu_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar(
      {super.key,
      required this.onTimePressed,
      required this.onOverviewPressed,
      required this.onContactPressed,
      required this.onRegisterPressed});
  final VoidCallback onTimePressed;
  final VoidCallback onOverviewPressed;
  final VoidCallback onContactPressed;
  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    // * This widget is responsive.
    // * On large screen sizes, it shows all the actions in the app bar.
    // * On small screen sizes, it shows only the shopping cart icon and a
    // * [MoreMenuButton].
    // ! MediaQuery is used on the assumption that the widget takes up the full
    // ! width of the screen. If that's not the case, LayoutBuilder should be
    // ! used instead.
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < Breakpoint.desktop) {
      return SliverAppBar(
        pinned: false,
        snap: true,
        floating: true,
        toolbarHeight: 80,
        flexibleSpace: ClipRRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: SizedBox(
            width: screenWidth,
            height: 80,
          ),
        )),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              height: 0.2,
              width: double.infinity,
              color: AppColors.lightGreyColor,
            )),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: Sizes.p8),
          child: RichText(
            text: TextSpan(
                text: "get",
                style: AppTextStyles.textStyle(
                    fontSize: 36, fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                      text: "linked",
                      style: AppTextStyles.textStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: AppColors.accentColor))
                ]),
          ),
        ),
        actions: [
          MoreMenuButton(
            onContactPressed: onContactPressed,
            onOverviewPressed: onOverviewPressed,
            onRegisterPressed: onRegisterPressed,
            onTimePressed: onTimePressed,
          ),
        ],
      );
    } else {
      return SliverAppBar(
        backgroundColor: Colors.transparent,
        pinned: false,
        toolbarHeight: 80,
        snap: true,
        floating: true,
        flexibleSpace: ClipRRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: SizedBox(
            width: screenWidth,
            height: 80,
          ),
        )),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
              height: 0.2,
              width: double.infinity,
              color: AppColors.lightGreyColor,
            )),
        titleSpacing: 30,
        title: Padding(
          padding: const EdgeInsets.only(top: Sizes.p8),
          child: RichText(
            text: TextSpan(
                text: "get",
                style: AppTextStyles.textStyle(
                    fontSize: 36, fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                      text: "linked",
                      style: AppTextStyles.textStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: AppColors.accentColor))
                ]),
          ),
        ),
        actions: [
          CustomTextButton(onTap: onTimePressed, text: "Time"),
          gapW16,
          CustomTextButton(onTap: onTimePressed, text: "Overview"),
          gapW16,
          CustomTextButton(onTap: onTimePressed, text: "FAQs"),
          gapW16,
          CustomTextButton(onTap: onTimePressed, text: "Contact"),
          gapW16,
          Padding(
            padding: const EdgeInsets.all(Sizes.p8),
            child: ButtonWidget(
              onTap: onRegisterPressed,
              text: "Register",
              width: 172,
            ),
          ),
          gapW16,
        ],
      );
    }
  }
}
