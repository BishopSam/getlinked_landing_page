import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/svg_asset_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/get_linked_text.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/man_with_glasses.dart';

/// Widget rendered for screensizes greater than tablets
class TimeWidgetLargeScreen extends StatelessWidget {
  const TimeWidgetLargeScreen({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
        maxContentWidth: screenWidth,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: screenHeight(context, percent: 2),
              right: screenWidth * 0.4,
              child: const BigPurpleFlare(),
            ),
            Positioned(
                top: screenHeight(context,
                    percent: (screenWidth > Breakpoint.tablet &&
                            screenWidth < Breakpoint.desktop)
                        ? 50
                        : 10),
                left: screenWidth * 0.6,
                child: const SmallPurpleFlare()),
            Column(
              children: [
                const Gap(100),
                if (screenWidth > Breakpoint.tablet &&
                    screenWidth < Breakpoint.desktop)
                  const Gap(300),
                const ManWithGlassWorldWidget(),
              ],
            ),
            Positioned(
              top: screenHeight(context, percent: 2),
              left: (screenWidth > Breakpoint.tablet &&
                      screenWidth < Breakpoint.desktop)
                  ? screenWidth * 0.4
                  : screenWidth * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Sizes.p24, right: Sizes.p24, left: Sizes.p24),
                    child: Text(
                      "Igniting a Revolution in HR Innovation",
                      style: AppTextStyles.italicTextStyle(
                          fontSize: (screenWidth > Breakpoint.tablet &&
                                  screenWidth < Breakpoint.desktop)
                              ? 24
                              : 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SvgAssetWidget(
                    svgUrl: SvgAsset.curvedLine,
                    color: AppColors.pinkColor,
                  )
                ],
              ),
            ),
            Positioned(
                top: screenHeight(context, percent: 10),
                left: screenWidth * 0.03,
                child: const GetlinkedTextSection()),
            Positioned(
                top: screenHeight(context, percent: 70),
                left: screenWidth * 0.4,
                child: Image.asset(PngAsset.star3)),
            Positioned(
                top: screenHeight(context, percent: 10),
                left: screenWidth * 0.1,
                child: Image.asset(PngAsset.star1)),
            Positioned(
                top: screenHeight(context, percent: 20),
                left: screenWidth * 0.58,
                child: Image.asset(PngAsset.star2)),
            Positioned(
                top: screenHeight(context, percent: 12),
                left: screenWidth * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Image.asset(PngAsset.creativeIdea),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 0.2,
                width: screenWidth,
                color: AppColors.lightGreyColor,
              ),
            )
          ],
        ));
  }
}
