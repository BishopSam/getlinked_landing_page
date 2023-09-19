import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
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
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: Sizes.p32,
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      const Gap(50),
                      Container(
                        width: screenWidth * 0.5,
                        height: screenHeight(context, percent: 50),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.pupleFlareColor,
                                blurRadius: screenWidth * 0.9,
                                // offset: const Offset(0, 5),
                                spreadRadius: 10.0,
                              ),
                            ]),
                      ),
                    ],
                  )),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (screenWidth > Breakpoint.tablet &&
                    screenWidth < Breakpoint.desktop)
                  const Gap(300),
                const Gap(100),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: screenWidth * 0.4,
                      height: screenHeight(context, percent: 40),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.pupleFlareColor,
                              blurRadius: screenWidth * 0.7,
                              offset: const Offset(0, 5),
                              spreadRadius: 2.0,
                            ),
                          ]),
                    )),
              ],
            ),
            Column(
              children: [
                const Gap(100),
                if (screenWidth > Breakpoint.tablet &&
                    screenWidth < Breakpoint.desktop)
                  const Gap(300),
                const ManWithGlassWorldWidget(),
              ],
            ),
            Column(
              children: [
                const Gap(20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: Sizes.p24, right: Sizes.p24, left: Sizes.p24),
                        child: Text(
                          "Igniting a Revolution in HR Innovation",
                          style: AppTextStyles.italicTextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SvgAssetWidget(
                        svgUrl: SvgAsset.curvedLine,
                        color: AppColors.pinkColor,
                      )
                    ],
                  ),
                ),
                const GetlinkedTextSection(),
              ],
            ),
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
                left: screenWidth * 0.5,
                child: Image.asset(PngAsset.star2)),
          ],
        ));
  }
}
