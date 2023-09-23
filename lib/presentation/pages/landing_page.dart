import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/pages/contact_page.dart';
import 'package:getlinked_landing_page/presentation/pages/register_page.dart';
import 'package:getlinked_landing_page/presentation/widgets/faqs/faqs_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/footer/footer_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/home_app_bar.dart';
import 'package:getlinked_landing_page/presentation/widgets/judging_criteria/judgin_criteria_section.dart';
import 'package:getlinked_landing_page/presentation/widgets/overview/overview_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/partners_and_supporters/partners_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/privacy_policy/privacy_policy_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/prizes/prizes_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/purple_flares.dart';
import 'package:getlinked_landing_page/presentation/widgets/rules_and_guidelines/rules_and_guidelines_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/timeline/time_line_widget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final AutoScrollController nestedController = AutoScrollController();
  final PageController pageController = PageController(keepPage: true);

  final timeWidgetKey = GlobalKey();
  final overviewWidgetKey = GlobalKey();
  List<Widget> widgetList = [];
  @override
  void initState() {
    initWidgets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: HomeAppBar(
          onTimePressed: onTimePressed,
          onOverviewPressed: onOverviewPressed,
          onFAQsPressed: onFAQsPressed,
          onContactPressed: onContactPressed,
          onRegisterPressed: onRegisterPressed,
        ),
        body: screenWidth >= Breakpoint.tablet
            ? PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SingleChildScrollView(
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
                  ),
                  const ContactPage(),
                  const RegisterPage(),
                ],
              )
            : SingleChildScrollView(
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

  initWidgets() {
    widgetList = [
      TimeWidget(
        onRegisterPressed: onRegisterPressed,
      ),
      const OverviewandRulesWidget(),
      const TimeLineWidget(),
      PrizesWidget(),
      const PartnersandPrivacyWidget(),
    ];
  }

  void onRegisterPressed() {
    if (screenWidth(context) >= Breakpoint.tablet) {
      pageController.animateToPage(2,
          duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
    } else {
      final route = MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      );
      Navigator.push(context, route);
    }
  }

  void onTimePressed() {
    if (screenWidth(context) >= Breakpoint.tablet) {
      pageController
          .animateToPage(0,
              duration: const Duration(milliseconds: 700), curve: Curves.easeIn)
          .then((value) => scrollToWidget(0));
    } else {
      scrollToWidget(0);
    }
  }

  void onOverviewPressed() {
    if (screenWidth(context) >= Breakpoint.tablet) {
      pageController
          .animateToPage(0,
              duration: const Duration(milliseconds: 700), curve: Curves.easeIn)
          .then(
              (value) => Future.delayed(const Duration(milliseconds: 500), () {
                    scrollToWidget(1);
                  }));
    } else {
      scrollToWidget(1);
    }
  }

  void onContactPressed() {
    if (screenWidth(context) >= Breakpoint.tablet) {
      pageController.animateToPage(1,
          duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
    } else {
      final route = MaterialPageRoute(
        builder: (context) => const ContactPage(),
      );
      Navigator.push(context, route);
    }
  }

  void onFAQsPressed() {
    if (screenWidth(context) >= Breakpoint.tablet) {
      pageController
          .animateToPage(0,
              duration: const Duration(milliseconds: 700), curve: Curves.easeIn)
          .then(
              (value) => Future.delayed(const Duration(milliseconds: 500), () {
                    scrollToWidget(1, isFAQs: true);
                  }));
    } else {
      scrollToWidget(1, isFAQs: true);
    }
  }

  void scrollToWidget(int i, {bool? isFAQs}) {
    if (isFAQs != null) {
      nestedController.scrollToIndex(i,
          duration: const Duration(milliseconds: 500),
          preferPosition: AutoScrollPosition.end);
    } else {
      nestedController.scrollToIndex(i,
          duration: const Duration(milliseconds: 500),
          preferPosition:
              i > 0 ? AutoScrollPosition.begin : AutoScrollPosition.middle);
    }
  }
}

class PartnersandPrivacyWidget extends StatelessWidget {
  const PartnersandPrivacyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: screenHeight(context, percent: 60),
            left: screenWidth(context, percent: 60),
            child: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? const SmallPurpleFlare()
                : const BigPurpleFlare()),
        Positioned(
            top: screenHeight(context, percent: 170),
            right: screenWidth(context, percent: 60),
            child: screenWidth(context) >= Breakpoint.tablet &&
                    screenWidth(context) < 1100
                ? const SmallPurpleFlare()
                : const BigPurpleFlare()),
        Column(
          children: const [
            PartnersWidget(),
            PrivacyPolicyWidget(),
            FooterWidget(),
          ],
        ),
      ],
    );
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
            child: const SmallPurpleFlare()),
        Positioned(
            top: screenHeight(context,
                percent: screenWidth(context) >= Breakpoint.tablet &&
                        screenWidth(context) < 1100
                    ? 90
                    : 130),
            left: screenWidth(context, percent: 75),
            child: const SmallPurpleFlare()),
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
