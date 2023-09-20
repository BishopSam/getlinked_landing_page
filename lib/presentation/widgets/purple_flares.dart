import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';

class BigPurpleFlare extends StatelessWidget {
  const BigPurpleFlare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, percent: 60),
      height: screenHeight(context, percent: 60),
      decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.pupleFlareColor,
              blurRadius: screenWidth(context, percent: 7),
              // offset: const Offset(0, 5),
              spreadRadius: 1.0,
            ),
          ]),
    );
  }
}

class SmallPurpleFlare extends StatelessWidget {
  const SmallPurpleFlare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, percent: 40),
      height: screenHeight(context, percent: 40),
      decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.pupleFlareColor,
              blurRadius: screenWidth(context, percent: 70),
              offset: const Offset(0, 5),
              spreadRadius: 2.0,
            ),
          ]),
    );
  }
}
