
import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/constants.dart';
import 'package:getlinked_landing_page/presentation/widgets/judging_criteria/judging_criteria_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/judging_criteria/judging_criteris_mobile.dart';

class JudgingCriteria extends StatelessWidget {
  const JudgingCriteria({super.key});

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return const JudgingCriteriaLarge();
    }
    return const JudgingCriteriaMobile();
  }
}