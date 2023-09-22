import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/svg_asset_widget.dart';

class FooterLarge extends StatelessWidget {
  const FooterLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Container(
        color: AppColors.darkPrimaryColor.withOpacity(0.6),
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p64),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "get",
                            style: AppTextStyles.headerTextStyle(
                                fontSize: 36, fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                  text: "linked",
                                  style: AppTextStyles.headerTextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.accentColor))
                            ]),
                      ),
                      const Gap(10),
                      Text(
                        "Getlinked Tech Hackathon is a technology innovation program \nestablished by a group of organizations with the aim of showcasing \nyoung and talented individuals in the field of technology",
                        maxLines: 5,
                        style: AppTextStyles.textStyle(fontSize: 12.spMin),
                      ),
                      const Gap(50),
                      Row(
                        children: [
                          Text(
                            "Terms of Use",
                            style: AppTextStyles.textStyle(fontSize: 12.spMin),
                          ),
                          const Gap(5),
                          Container(
                            height: 20,
                            width: 4,
                            color: AppColors.accentColor,
                          ),
                          const Gap(5),
                          Text(
                            "Privacy Policy",
                            style: AppTextStyles.textStyle(fontSize: 12.spMin),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Gap(25),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Useful Links",
                        style: AppTextStyles.textStyle(
                            fontSize: 14.spMin, color: AppColors.accentColor),
                      ),
                      const Gap(10),
                      Text(
                        "Overview",
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
                      ),
                      const Gap(10),
                      Text(
                        "Timeline",
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
                      ),
                      const Gap(10),
                      Text(
                        "FAQs",
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
                      ),
                      const Gap(10),
                      Text(
                        "Register",
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
                      ),
                      const Gap(10),
                      !(screenWidth(context) >= Breakpoint.tablet &&
                              screenWidth(context) < 1100)
                          ? Row(
                              children: [
                                Text(
                                  "Follow Us",
                                  style: AppTextStyles.textStyle(
                                      fontSize: 14.spMin,
                                      color: AppColors.accentColor),
                                ),
                                const Gap(3),
                                const SvgAssetWidget(
                                    svgUrl: SvgAsset.instagram),
                                const Gap(3),
                                const SvgAssetWidget(svgUrl: SvgAsset.x),
                                const Gap(3),
                                const SvgAssetWidget(svgUrl: SvgAsset.facebook),
                                const Gap(3),
                                const SvgAssetWidget(svgUrl: SvgAsset.linkedin),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Follow Us",
                                  style: AppTextStyles.textStyle(
                                      fontSize: 14.spMin,
                                      color: AppColors.accentColor),
                                ),
                                const Gap(3),
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
                            )
                    ],
                  ),
                ),
                const Gap(25),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Contact Us",
                        style: AppTextStyles.textStyle(
                            fontSize: 14.spMin, color: AppColors.accentColor),
                      ),
                      const Gap(10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SvgAssetWidget(svgUrl: SvgAsset.contact),
                          const Gap(2),
                          Text(
                            "+234 679 81819",
                            style: AppTextStyles.textStyle(fontSize: 14.spMin),
                          ),
                        ],
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          const SvgAssetWidget(svgUrl: SvgAsset.location),
                          const Gap(3),
                          Text(
                            "27, Alara Street \nYaba 100012 \nLagos State",
                            style: AppTextStyles.textStyle(fontSize: 14.spMin),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
