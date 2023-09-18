import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/presentation/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getlinked Landing',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}

