import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';

class ManWithGlassWorldWidget extends StatelessWidget {
  const ManWithGlassWorldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            PngAsset.metrix,
            fit: BoxFit.fill,
            height: screenHeight(context, percent: 70),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: Sizes.p64),
            child: Image.asset(
              PngAsset.manWithGlasses,
              fit: BoxFit.fill,
              height: screenHeight(context, percent: 70),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.only(
              right: Sizes.p128,
            ),
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                  color: AppColors.pupleFlareColor.withOpacity(0.3),
                  blurRadius: screenHeight(context),
                  spreadRadius: screenHeight(context, percent: 5),
                  offset: Offset(-screenWidth(context, percent: 5),
                      screenHeight(context, percent: 10))),
            ]),
            child: Image.asset(
              PngAsset.electricWorld,
              height: screenHeight(context, percent: 60),
            ),
          ),
        ),
      ],
    );
  }
}

class ManWithGlassWorldWidgetMobile extends StatelessWidget {
  const ManWithGlassWorldWidgetMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            PngAsset.metrix,
            fit: BoxFit.cover,
            height: screenHeight(context, percent: 35),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: Sizes.p64),
            child: Image.asset(
              PngAsset.manWithGlasses,
              fit: BoxFit.cover,
              height: screenHeight(context, percent: 35),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.only(
              right: Sizes.p128,
            ),
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                  color: AppColors.pupleFlareColor.withOpacity(0.3),
                  blurRadius: screenHeight(context),
                  spreadRadius: screenHeight(context, percent: 5),
                  offset: Offset(-screenWidth(context, percent: 5),
                      screenHeight(context, percent: 10))),
            ]),
            child: Image.asset(
              PngAsset.electricWorld,
              fit: BoxFit.cover,
              height: screenHeight(context, percent: 35),
            ),
          ),
        ),
      ],
    );
  }
}
