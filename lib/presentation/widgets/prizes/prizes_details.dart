import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

import '../header_text.dart';
import 'prizes_position_widget.dart';

class PrizeDetails extends StatelessWidget {
  PrizeDetails({
    Key? key,
  }) : super(key: key);

  final prizesList = [
    _PrizesModel(
        position: "2nd",
        prizeMoney: "₦300,000",
        assetPath: PngAsset.secondPrize,
        isFirst: false),
    _PrizesModel(
        position: "1st",
        prizeMoney: "₦400,000",
        assetPath: PngAsset.firstPrize,
        isFirst: true),
    _PrizesModel(
        position: "3rd",
        prizeMoney: "₦150,000",
        assetPath: PngAsset.thirdPrize,
        isFirst: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p64),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 5,
            child: Image.asset(PngAsset.prizes),
          ),
          const Gap(10),
          Flexible(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: Sizes.p128),
                  child: HeaderText(
                      firstText: "Prizes and", secondText: "Rewards"),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(left: Sizes.p128),
                  child: Text(
                    "Highlights of the prizes and rewards for the winners and for partcipants",
                    style: AppTextStyles.textStyle(fontSize: 14.spMin),
                  ),
                ),
                const Gap(30),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (var element in prizesList) ...[
                      Flexible(
                        child: PrizePositionWidget(
                            position: element.position,
                            prizeMoney: element.prizeMoney,
                            assetPath: element.assetPath,
                            isFirst: element.isFirst),
                      ),
                      const Gap(3),
                    ]
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PrizesModel {
  final String position;
  final String prizeMoney;
  final String assetPath;
  final bool isFirst;
  _PrizesModel({
    required this.position,
    required this.prizeMoney,
    required this.assetPath,
    required this.isFirst,
  });
}
