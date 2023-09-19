import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/presentation/widgets/get_box_offset.dart';
import 'package:getlinked_landing_page/presentation/widgets/home_app_bar.dart';
import 'package:getlinked_landing_page/presentation/widgets/overview/overview_widget.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController nestedController = ScrollController();
  final timeWidgetKey = GlobalKey();
  final overviewWidgetKey = GlobalKey();
  List<double> item = [];

  @override
  void initState() {
    item = List.generate(10, (index) => index.toDouble());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
            controller: nestedController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                HomeAppBar(
                  onTimePressed: scrolltoTimeWidget,
                  onFAQsPressed: () {},
                  onOverviewPressed: () =>
                      scrollToWidget(innerBoxIsScrolled, overviewWidgetKey),
                  onContactPressed: () {},
                  onRegisterPressed: () {},
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Column(
                children: [
                  GetBoxOffset(
                    key: timeWidgetKey,
                    offset: (offset) {
                      item[0] = offset.dy;
                    },
                    child: const TimeWidget(),
                  ),
                  GetBoxOffset(
                    key: overviewWidgetKey,
                    offset: (offset) {
                      item[1] = offset.dy;
                    },
                    child: const OverviewWidget(),
                  ),
                ],
              ),
            )));
  }

  Future<void> scrolltoTimeWidget() {
    return Scrollable.ensureVisible(timeWidgetKey.currentContext!,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void scrollToWidget(bool innerBoxIsScrolled, GlobalKey key) {
    if (key.currentContext != null) {
      if (innerBoxIsScrolled) {
        Scrollable.ensureVisible(key.currentContext!,
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      } else {
        /// scroll twice since innerbox hasnt been scrolled yet
        Scrollable.ensureVisible(key.currentContext!,
                duration: const Duration(microseconds: 1), curve: Curves.easeIn)
            .then((value) => Scrollable.ensureVisible(key.currentContext!,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn));
      }
    }
  }
}
