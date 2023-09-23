import 'package:animate_do/animate_do.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/presentation/widgets/app_buttons.dart';

void showMessage(
  BuildContext context,
  String message, {
  bool isError = true,
}) {
  Flushbar(
      message: message,
      margin: EdgeInsets.only(
          right: screenWidth(context, percent: 2),
          left: screenWidth(context, percent: 50),
          top: screenHeight(context, percent: 2)),
    
      duration: const Duration(milliseconds: 1800),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.easeIn,
      animationDuration: const Duration(milliseconds: 200),
      backgroundColor: isError ? Colors.red : AppColors.accentColor,
      isDismissible: true,
      titleText: Text(
        isError ? "Error" : 'Success',
        style: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
      ),
      icon: Icon(
        isError ? Icons.error : Icons.check_circle,
        color: Colors.white,
      )).show(context);
}

void showInfoMessage(BuildContext context, String message) {
  Flushbar(
    message: message,
    margin: EdgeInsets.only(
        right: screenWidth(context, percent: 2),
        left: screenWidth(context, percent: 50),
        top: screenHeight(context, percent: 2)),
   
    duration: const Duration(milliseconds: 2800),
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.FLOATING,
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    forwardAnimationCurve: Curves.easeIn,
    animationDuration: const Duration(milliseconds: 200),
    backgroundColor: AppColors.accentColor,
    isDismissible: true,
    titleText: const Text(
      'Info',
      style: TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
    ),
    icon: const Icon(
      Icons.info,
      color: Colors.white,
    ),
  ).show(context);
}

void showAlertDialog(BuildContext context, Widget child,
    {bool barrierDismissible = false}) {
  showDialog(
      context: context,
      builder: (_) => child,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.white10.withOpacity(0.3));
}

void showLoadingDialog(BuildContext context, {String? message}) {
  showAlertDialog(
      context,
      Material(
        color: AppColors.darkPrimaryColor.withOpacity(0.7),
        child: WillPopScope(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Pulse(
                  infinite: true,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: "get",
                          style: AppTextStyles.headerTextStyle(
                              fontSize: 36, fontWeight: FontWeight.w700),
                          children: [
                            TextSpan(
                                text: "linked",
                                style: AppTextStyles.headerTextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.accentColor))
                          ]),
                    ),
                  ),
                ),
              ),
            ),
            onWillPop: () async {
              return Future.value(false);
            }),
      ));
}

void showSuccessDialog(BuildContext context) {
  return showAlertDialog(
      context,
      Material(
        color: AppColors.darkPrimaryColor.withOpacity(0.7),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight(context, percent: 18),
              left: screenWidth(context, percent: 75),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 40),
              left: screenWidth(context, percent: 30),
              child: Image.asset(
                PngAsset.star2,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 75),
              left: screenWidth(context, percent: 70),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Center(
              child: Container(
                height: screenHeight(context, percent: 60),
                width: screenWidth(context, percent: 50),
                padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p64, vertical: Sizes.p32),
                decoration: ShapeDecoration(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        width: 1, color: AppColors.accentColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            PngAsset.networkSuccessTick,
                            width: screenWidth(context, percent: 25),
                            height: screenHeight(context, percent: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: Sizes.p64),
                            child: Image.asset(
                              PngAsset.networkSuccessMan,
                              width: screenWidth(context, percent: 25),
                              height: screenHeight(context, percent: 25),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Congratulations \nyou have successfully Registered!",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textStyle(
                            fontSize:
                                screenWidth(context) >= Breakpoint.tablet &&
                                        screenWidth(context) < 1100
                                    ? 20.spMin
                                    : 32.spMin,
                            fontWeight: FontWeight.bold),
                      ),
                      const Gap(5),
                      Text(
                        "Yes, it was easy and you did it! \ncheck your mail box for next step",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
                      ),
                      const Gap(10),
                      ButtonWidget(
                          onTap: () => Navigator.pop(context), text: "Back"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}

void showMobileSuccessDialog(BuildContext context) {
  return showAlertDialog(
      context,
      Material(
        color: AppColors.darkPrimaryColor.withOpacity(0.7),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight(context, percent: 18),
              left: screenWidth(context, percent: 75),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 40),
              left: screenWidth(context, percent: 30),
              child: Image.asset(
                PngAsset.star2,
              ),
            ),
            Positioned(
              top: screenHeight(context, percent: 75),
              left: screenWidth(context, percent: 70),
              child: Image.asset(
                PngAsset.star5,
              ),
            ),
            Center(
              child: Container(
                height: screenHeight(context, percent: 50),
                width: screenWidth(context, percent: 60),
                padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.p12, vertical: Sizes.p12),
                decoration: ShapeDecoration(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        width: 1, color: AppColors.accentColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            PngAsset.networkSuccessTick,
                            width: screenWidth(context, percent: 25),
                            height: screenHeight(context, percent: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: Sizes.p64),
                            child: Image.asset(
                              PngAsset.networkSuccessMan,
                              width: screenWidth(context, percent: 25),
                              height: screenHeight(context, percent: 25),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Congratulations \nyou have successfully Registered!",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textStyle(
                            fontSize: 16.spMin, fontWeight: FontWeight.bold),
                      ),
                      const Gap(5),
                      Text(
                        "Yes, it was easy and you did it! \ncheck your mail box for next step",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textStyle(fontSize: 14.spMin),
                      ),
                      const Gap(5),
                      ButtonWidget(
                          onTap: () => Navigator.pop(context), text: "Back"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}
