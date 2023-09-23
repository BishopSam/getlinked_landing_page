import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/header_text.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_position_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_widget.dart';

class PrizesMobile extends StatelessWidget {
  const PrizesMobile({super.key, required this.prizesList});
  final List<PrizesModel> prizesList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkPrimaryColor,
      child: ResponsiveCenter(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(20),
              const HeaderTextMobile(
                  firstText: "Prizes and", secondText: "Rewards"),
              const Gap(10),
              Text(
                "Highlights of the prizes and rewards for the winners \nand for partcipants",
                textAlign: TextAlign.center,
                style: AppTextStyles.textStyle(fontSize: 12.spMin),
              ),
              const Gap(20),
              Image.asset(
                PngAsset.prizes,
                width: screenWidth(context, percent: 70),
                fit: BoxFit.fitWidth,
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var element in prizesList) ...[
                    PrizePositionWidgetMobile(
                        position: element.position,
                        prizeMoney: element.prizeMoney,
                        assetPath: element.assetPath,
                        isFirst: element.isFirst)
                  ]
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
