import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/partners_and_supporters/partners_widget_large.dart';

class PartnersMobile extends StatelessWidget {
  const PartnersMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.p32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(15),
                Text(
                  "Partners and Supporters",
                  style: AppTextStyles.headerTextStyle(fontSize: 20.spMin),
                ),
                const Gap(5),
                Text(
                  "Getlinked Hackathon 1.0 is honored to have the following major \ncompanies as its partners and sponsors",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textStyle(fontSize: 12.spMin),
                ),
                const Gap(20),
                const PartnersBoxMobile(),
              ],
            ),
          ),
          Container(
            height: 0.2,
            width: screenWidth(context),
            color: AppColors.lightGreyColor,
          ),
        ],
      ),
    );
  }
}
