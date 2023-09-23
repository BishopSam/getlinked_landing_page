import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class FAQsText extends StatefulWidget {
  const FAQsText({super.key, required this.question, required this.answer});
  final String question;
  final String answer;

  @override
  State<FAQsText> createState() => _FAQsTextState();
}

class _FAQsTextState extends State<FAQsText> {
  bool isAnswerShown = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                widget.question,
                style: AppTextStyles.textStyle(
                  fontSize: 14.spMin,
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: showAnswer,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  isAnswerShown ? Icons.close : Icons.add,
                  size: 24,
                  color: AppColors.accentColor,
                ),
              ),
            )
          ],
        ),
        const Gap(10),
        Container(
          height: 0.3,
          width: screenWidth(context),
          color: AppColors.accentColor,
        ),
        const Gap(20),
        Visibility(
          maintainAnimation: true,
          visible: isAnswerShown,
          maintainState: true,
          child: Text(
            widget.answer,
            style: AppTextStyles.textStyle(
                fontSize: 14.spMin, color: AppColors.accentColor),
          ),
        )
      ],
    );
  }

  void showAnswer() {
    setState(() {
      isAnswerShown = !isAnswerShown;
    });
  }
}


class FAQsTextMobile extends StatefulWidget {
  const FAQsTextMobile({super.key, required this.question, required this.answer});
  final String question;
  final String answer;

  @override
  State<FAQsTextMobile> createState() => _FAQsTextMobileState();
}

class _FAQsTextMobileState extends State<FAQsTextMobile> {
  bool isAnswerShown = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                widget.question,
                style: AppTextStyles.textStyle(
                  fontSize: 12.spMin,
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: showAnswer,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  isAnswerShown ? Icons.close : Icons.add,
                  size: 20,
                  color: AppColors.accentColor,
                ),
              ),
            )
          ],
        ),
        const Gap(5),
        Container(
          height: 0.3,
          width: screenWidth(context),
          color: AppColors.accentColor,
        ),
        const Gap(10),
        Visibility(
          maintainAnimation: true,
          visible: isAnswerShown,
          maintainState: true,
          child: Text(
            widget.answer,
            style: AppTextStyles.textStyle(
                fontSize: 12.spMin, color: AppColors.accentColor),
          ),
        )
      ],
    );
  }

  void showAnswer() {
    setState(() {
      isAnswerShown = !isAnswerShown;
    });
  }
}
