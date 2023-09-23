import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';

class CountDownWidgetLarge extends StatefulWidget {
  const CountDownWidgetLarge({
    Key? key,
  }) : super(key: key);

  @override
  State<CountDownWidgetLarge> createState() => _CountDownWidgetLargeState();
}

class _CountDownWidgetLargeState extends State<CountDownWidgetLarge> {
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
    return Text.rich(TextSpan(
        text: hours,
        style: AppTextStyles.textStyle(fontSize: 48.spMin),
        children: [
          TextSpan(
            text: "H",
            style: AppTextStyles.textStyle(fontSize: 12.spMin),
          ),
          TextSpan(
            text: " $minutes",
            style: AppTextStyles.textStyle(fontSize: 48.spMin),
          ),
          TextSpan(
            text: "M",
            style: AppTextStyles.textStyle(fontSize: 12.spMin),
          ),
          TextSpan(
            text: " $seconds",
            style: AppTextStyles.textStyle(fontSize: 48.spMin),
          ),
          TextSpan(
            text: "S",
            style: AppTextStyles.textStyle(fontSize: 12.spMin),
          )
        ]));
  }
}

/// mobile version of [CountDownWidgetLarge]
class CountDownWidget extends StatefulWidget {
  const CountDownWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
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
    return Text.rich(TextSpan(
        text: hours,
        style: AppTextStyles.textStyle(fontSize: 32.spMin),
        children: [
          TextSpan(
            text: "H",
            style: AppTextStyles.textStyle(fontSize: 8.spMin),
          ),
          TextSpan(
            text: " $minutes",
            style: AppTextStyles.textStyle(fontSize: 32.spMin),
          ),
          TextSpan(
            text: "M",
            style: AppTextStyles.textStyle(fontSize: 8.spMin),
          ),
          TextSpan(
            text: " $seconds",
            style: AppTextStyles.textStyle(fontSize: 32.spMin),
          ),
          TextSpan(
            text: "S",
            style: AppTextStyles.textStyle(fontSize: 8.spMin),
          )
        ]));
  }
}
