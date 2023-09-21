import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/faqs/faqs_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/home_app_bar.dart';
import 'package:getlinked_landing_page/presentation/widgets/judging_criteria/judgin_criteria_section.dart';
import 'package:getlinked_landing_page/presentation/widgets/overview/overview_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/rules_and_guidelines/rules_and_guidelines_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final AutoScrollController nestedController = AutoScrollController();
  final timeWidgetKey = GlobalKey();
  final overviewWidgetKey = GlobalKey();

  final widgetList = [
    const TimeWidget(),
    const OverviewandRulesWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: HomeAppBar(
          onTimePressed: () => scrollToWidget(0),
          onOverviewPressed: () => scrollToWidget(1),
          onFAQsPressed: () => scrollToWidget(1, isFAQs: true),
          onContactPressed: () {},
          onRegisterPressed: () {},
        ),
        body: SingleChildScrollView(
          controller: nestedController,
          child: Column(
            children: [
              const Gap(50),
              for (int i = 0; i < widgetList.length; i++) ...[
                AutoScrollTag(
                    key: ValueKey(i),
                    controller: nestedController,
                    index: i,
                    child: widgetList[i])
              ]
            ],
          ),
        ));
  }

  void scrollToWidget(int i, {bool? isFAQs}) {
    if (isFAQs != null) {
      nestedController.scrollToIndex(i,
          duration: const Duration(milliseconds: 300),
          preferPosition: AutoScrollPosition.end);
    } else {
      nestedController.scrollToIndex(i,
          duration: const Duration(milliseconds: 300),
          preferPosition:
              i > 0 ? AutoScrollPosition.begin : AutoScrollPosition.middle);
    }
  }
}

class OverviewandRulesWidget extends StatelessWidget {
  const OverviewandRulesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: screenHeight(context,
                percent: screenWidth(context) >= Breakpoint.tablet &&
                        screenWidth(context) < 1100
                    ? 50
                    : 90),
            child: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? const SmallPurpleFlare()
                : const BigPurpleFlare()),
        Positioned(
            top: screenHeight(context,
                percent: screenWidth(context) >= Breakpoint.tablet &&
                        screenWidth(context) < 1100
                    ? 90
                    : 130),
            left: screenWidth(context, percent: 75),
            child: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? const SmallPurpleFlare()
                : const BigPurpleFlare()),
        Positioned(
            top: screenHeight(context,
                percent: screenWidth(context) >= Breakpoint.tablet &&
                        screenWidth(context) < 1100
                    ? 150
                    : 200),
            right: screenWidth(context, percent: 60),
            child: const SmallPurpleFlare()),
        Column(
          children: const [
            OverviewWidget(),
            RulesandGuidelines(),
            JudgingCriteria(),
            FAQsWidget(),
          ],
        ),
      ],
    );
  }
}
