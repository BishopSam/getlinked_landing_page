import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:getlinked_landing_page/presentation/widgets/home_app_bar.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  HomeAppBar(
                    onTimePressed: () {},
                    onOverviewPressed: () {},
                    onContactPressed: () {},
                    onRegisterPressed: () {},
                  ),
                ],
            body: SingleChildScrollView(
              child: Column(
                children: const [
                  TimeWidget(),
                ],
              ),
            )));
  }
}
