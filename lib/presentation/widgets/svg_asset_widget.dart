import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';

class SvgAssetWidget extends StatelessWidget {
  const SvgAssetWidget(
      {Key? key,
      required this.svgUrl,
      this.height = 32,
      this.width = 32,
      this.color = AppColors.white,
      this.fit = BoxFit.scaleDown})
      : super(key: key);
  final String svgUrl;
  final double height;
  final double width;
  final Color color;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: SvgPicture.asset(
        svgUrl,
        height: height,
        width: width,
        color: color,
        fit: fit,
      ),
    );
  }
}
