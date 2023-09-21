import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:getlinked_landing_page/core/constants/sizes.dart';
import 'package:getlinked_landing_page/core/ui_util/assets.dart';
import 'package:getlinked_landing_page/core/ui_util/fonts.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/svg_asset_widget.dart';

enum PopupMenuOption { time, overview, faqs, contact, register }

class MoreMenuButton extends StatelessWidget {
  const MoreMenuButton({
    super.key,
    required this.onTimePressed,
    required this.onOverviewPressed,
    required this.onContactPressed,
    required this.onRegisterPressed,
    required this.onFAQsPressed,
  });
  final VoidCallback onTimePressed;
  final VoidCallback onOverviewPressed;
  final VoidCallback onContactPressed;
  final VoidCallback onRegisterPressed;
  final VoidCallback onFAQsPressed;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(iconTheme: const IconThemeData(color: AppColors.white)),
      child: PopupMenuButton(
        // three vertical dots icon (to reveal menu options)
        icon: const SvgAssetWidget(svgUrl: SvgAsset.moreIcon),
        color: AppColors.primaryColor,

        itemBuilder: (_) {
          // show all the options based on conditional logic
          return <PopupMenuEntry<PopupMenuOption>>[
            PopupMenuItem(
              value: PopupMenuOption.time,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p8, horizontal: Sizes.p12),
                child: Text(
                  'Time',
                  style: AppTextStyles.textStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              value: PopupMenuOption.overview,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p8, horizontal: Sizes.p12),
                child: Text(
                  'Overview',
                  style: AppTextStyles.textStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              value: PopupMenuOption.faqs,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p8, horizontal: Sizes.p12),
                child: Text(
                  'FAQs',
                  style: AppTextStyles.textStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              value: PopupMenuOption.contact,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p8, horizontal: Sizes.p12),
                child: Text(
                  'Contact',
                  style: AppTextStyles.textStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              value: PopupMenuOption.register,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.p8, horizontal: Sizes.p12),
                child: ButtonWidget(onTap: () {}, text: "Register"),
              ),
            ),
          ];
        },
        onSelected: (option) {
          // push to different routes based on selected option
          switch (option) {
            case PopupMenuOption.time:
              onTimePressed.call();
              break;
            case PopupMenuOption.overview:
              onOverviewPressed.call();
              break;
            case PopupMenuOption.faqs:
              onFAQsPressed.call();
              break;
            case PopupMenuOption.contact:
              onContactPressed.call();
              break;

            case PopupMenuOption.register:
              null;
              break;
          }
        },
      ),
    );
  }
}
