import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/time/time_widget_mobile.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({super.key, required this.onRegisterPressed});
  final VoidCallback onRegisterPressed;

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  DateTime dateTime1 = DateTime.now();

  //* 26th September 2023, Anouncement of Winner
  DateTime dateTime2 = DateTime(2023, 9, 26, 12, 0);

  Timer? countdownTimer;
  Duration? myDuration;
  void startTimer() {
    myDuration = Duration(seconds: dateTime2.difference(dateTime1).inSeconds);

    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer?.cancel());
  }

  // Step 6
  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      if (myDuration != null) {
        final seconds = myDuration!.inSeconds - reduceSecondsBy;
        if (seconds < 0) {
          countdownTimer?.cancel();
        } else {
          myDuration = Duration(seconds: seconds);
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    countdownTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? strDigits(int? n) => n.toString().padLeft(2, '0');

    final minutes = strDigits(myDuration?.inMinutes.remainder(60));
    final seconds = strDigits(myDuration?.inSeconds.remainder(60));
    final hours = strDigits(myDuration?.inHours.remainder(24));

    final screenWidth = MediaQuery.of(context).size.width;
    log("screen$screenWidth");
    if (screenWidth >= Breakpoint.tablet) {
      return TimeWidgetLargeScreen(
          screenWidth: screenWidth,
          onRegisterPressed: widget.onRegisterPressed,
          minutes: minutes ?? "",
          seconds: seconds ?? "",
          hours: hours ?? "");
    } else {
      return TimeWidgetMobile(
          onRegisterPressed: widget.onRegisterPressed,
          myDuration: myDuration,
          minutes: minutes ?? "",
          seconds: seconds ?? "",
          hours: hours ?? "");
    }
  }
}
