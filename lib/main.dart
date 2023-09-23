import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getlinked_landing_page/core/constants/colors.dart';
import 'package:getlinked_landing_page/dependeincy_container.dart';
import 'package:getlinked_landing_page/presentation/pages/landing_page.dart';

void main()  {
 WidgetsFlutterBinding.ensureInitialized();
 initDependencies();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        title: 'Getlinked Landing',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),
        home: const LandingPage(),
      );
    });
  }
}
