import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_widget.dart';

import '../header_text.dart';
import 'prizes_position_widget.dart';

class PrizeDetails extends StatelessWidget {
  const PrizeDetails({
    Key? key, required this.prizesList,
  }) : super(key: key);

  final List<PrizesModel> prizesList;

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


