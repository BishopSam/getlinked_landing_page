import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_mobile.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_widget_large.dart';

class PrizesWidget extends StatelessWidget {
  PrizesWidget({super.key});

  final prizesList = [
    PrizesModel(
        position: "2nd",
        prizeMoney: "₦300,000",
        assetPath: PngAsset.secondPrize,
        isFirst: false),
    PrizesModel(
        position: "1st",
        prizeMoney: "₦400,000",
        assetPath: PngAsset.firstPrize,
        isFirst: true),
    PrizesModel(
        position: "3rd",
        prizeMoney: "₦150,000",
        assetPath: PngAsset.thirdPrize,
        isFirst: false),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return PrizesLarge(prizeList: prizesList,);
    }
    return  PrizesMobile(prizesList: prizesList,);
  }
}

class PrizesModel {
  final String position;
  final String prizeMoney;
  final String assetPath;
  final bool isFirst;
  PrizesModel({
    required this.position,
    required this.prizeMoney,
    required this.assetPath,
    required this.isFirst,
  });
}
