import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';
import 'package:getlinked_landing_page/presentation/widgets/svg_asset_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/countdown_widget.dart';

class GetlinkedTextSection extends StatelessWidget {
  const GetlinkedTextSection({
    Key? key,
    
    required this.onRegisterPressed,
  }) : super(key: key);

  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(50),
        Text(
          "getlinked Tech",
          style: AppTextStyles.headerTextStyle(
              fontSize: screenWidth(context) >= Breakpoint.tablet &&
                      screenWidth(context) < 1100
                  ? 60.spMin
                  : 80.spMin,
              fontWeight: FontWeight.w800),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 4,
              child: RichText(
                text: TextSpan(
                  text: "Hackathon ",
                  style: AppTextStyles.headerTextStyle(
                    fontSize: screenWidth(context) >= Breakpoint.tablet &&
                            screenWidth(context) < 1100
                        ? 60.spMin
                        : 80.spMin,
                    fontWeight: FontWeight.w800,
                  ),
                  children: [
                    TextSpan(
                        text: "1.0",
                        style: AppTextStyles.headerTextStyle(
                            fontSize:
                                screenWidth(context) >= Breakpoint.desktop &&
                                        screenWidth(context) < 1100
                                    ? 60.spMin
                                    : 80.spMin,
                            fontWeight: FontWeight.w800,
                            color: AppColors.accentColor))
                  ],
                ),
              ),
            ),
            Flexible(flex: 1, child: Image.asset(PngAsset.chain)),
            Flexible(flex: 1, child: Image.asset(PngAsset.kapow)),
          ],
        ),
        const Gap(10),
        Text(
          "Participate in getlinked tech Hackathon 2023 stand \na chance to win a Big prize",
          style: AppTextStyles.textStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Gap(20),
        ButtonWidget(
          onTap: onRegisterPressed,
          text: "Register",
          width: 172,
        ),
        const Gap(50),
        CountDownWidgetLarge(
        
        ),
      ],
    );
  }
}

/// mobile vesion of [GetlinkedTextSection]
class GetlinkedTextSectionMobile extends StatelessWidget {
  const GetlinkedTextSectionMobile({
    Key? key,
    required this.onRegisterPressed,
  }) : super(key: key);
  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: screenHeight(context, percent: 10),
            left: screenWidth(context, percent: 50),
            child: Image.asset(
              PngAsset.creativeIdea,
              width: 35,
              height: 35,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(
                  top: Sizes.p24, right: Sizes.p24, left: Sizes.p24),
              child: Text(
                "Igniting a Revolution in HR Innovation",
                style: AppTextStyles.italicTextStyle(
                    fontSize: 16.spMin, fontWeight: FontWeight.bold),
              ),
            ),
            const SvgAssetWidget(
              svgUrl: SvgAsset.curvedLine,
              color: AppColors.pinkColor,
              height: 24,
            ),
            const Gap(20),
            Text(
              "getlinked Tech",
              style: AppTextStyles.headerTextStyle(
                  fontSize: 32.spMin, fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 4,
                  child: RichText(
                    text: TextSpan(
                      text: "Hackathon ",
                      style: AppTextStyles.headerTextStyle(
                        fontSize: 32.spMin,
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                            text: "1.0",
                            style: AppTextStyles.headerTextStyle(
                                fontSize: 32.spMin,
                                fontWeight: FontWeight.w800,
                                color: AppColors.accentColor))
                      ],
                    ),
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Image.asset(
                      PngAsset.chain,
                      height: 32,
                      width: 32,
                    )),
                Flexible(
                    flex: 1,
                    child: Image.asset(
                      PngAsset.kapow,
                      height: 32,
                      width: 32,
                    )),
              ],
            ),
            const Gap(10),
            Text(
              "Participate in getlinked tech Hackathon 2023 stand \na chance to win a Big prize",
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle(
                fontSize: 13.spMin,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
            ButtonWidget(
              onTap: onRegisterPressed,
              text: "Register",
              width: 152,
            ),
          ],
        ),
      ],
    );
  }
}
