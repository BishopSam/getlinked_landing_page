import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';

class GetlinkedTextSection extends StatelessWidget {
  const GetlinkedTextSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: Sizes.p128, top: Sizes.p64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(50),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Image.asset(PngAsset.creativeIdea),
                )),
            Text(
              "getlinked Tech",
              style: AppTextStyles.textStyle(
                  fontSize: screenWidth(context) >= Breakpoint.tablet &&
                          screenWidth(context) < 1100
                      ? 60.spMin
                      : 80.spMin,
                  fontWeight: FontWeight.w800),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 4,
                  child: RichText(
                    text: TextSpan(
                      text: "Hackathon",
                      style: AppTextStyles.textStyle(
                        fontSize: screenWidth(context) >= Breakpoint.tablet &&
                                screenWidth(context) < 1100
                            ? 60.spMin
                            : 80.spMin,
                        fontWeight: FontWeight.w800,
                      ),
                      children: [
                        TextSpan(
                            text: "1.0",
                            style: AppTextStyles.textStyle(
                                fontSize: screenWidth(context) >=
                                            Breakpoint.desktop &&
                                        screenWidth(context) < 1100
                                    ? 60.spMin
                                    : 80.spMin,
                                fontWeight: FontWeight.w800,
                                color: AppColors.accentColor))
                      ],
                    ),
                  ),
                ),
                Flexible(flex: 1, child: Image.asset(PngAsset.chain)),
                Flexible(flex: 1, child: Image.asset(PngAsset.kapow)),
              ],
            ),
            const Gap(10),
            Text(
              "Participate in getlinked tech Hackathon 2023 stand \na chance to win a Big prize",
              style: AppTextStyles.textStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(20),
            ButtonWidget(
              onTap: () {},
              text: "Register",
              width: 172,
            ),
          ],
        ),
      ),
    );
  }
}
