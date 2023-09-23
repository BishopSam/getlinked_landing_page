// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';

import 'prizes_details.dart';

class PrizesLarge extends StatelessWidget {
  const PrizesLarge({super.key, required this.prizeList});
  final List<PrizesModel> prizeList;

  @override
  Widget build(BuildContext context) {
    return ResponsiveCenter(
      child: Container(
        color: AppColors.darkPrimaryColor,
        child: Stack(
          children: [
            Positioned(
                top: screenHeight(context, percent: 10),
                left: screenWidth(context, percent: 10),
                child: const SmallPurpleFlare()),
            Positioned(
                top: screenHeight(context, percent: 20),
                left: screenWidth(context, percent: 80),
                child: const SmallPurpleFlare()),
            Positioned(
              top: screenHeight(context, percent: 5),
              left: screenWidth(context, percent: 15),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 15),
              left: screenWidth(context, percent: 45),
              child: Image.asset(
                PngAsset.star1,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 20),
              left: screenWidth(context, percent: 90),
              child: Image.asset(
                PngAsset.star1,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 70),
              left: screenWidth(context, percent: 15),
              child: Image.asset(
                PngAsset.star1,
                width: 18,
                height: 15,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 15),
              left: screenWidth(context, percent: 70),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            PrizeDetails(prizesList: prizeList,),
          ],
        ),
      ),
    );
  }
}


