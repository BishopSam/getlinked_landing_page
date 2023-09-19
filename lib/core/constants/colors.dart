import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF150E28);
  static Color lightGreyColor = Colors.grey[200]!;
  static const Color white = Colors.white;
  static const Color accentColor = Color(0xFFD434FE);
  static const Color pupleFlareColor =Color(0xFF44087E);
  static const Color pinkColor = Color(0xFFFF26B9);
}

class AppGradients {
  static const LinearGradient appLinearGradients = LinearGradient(
      begin: Alignment(-1.00, -0.00),
      end: Alignment(1, 0),
      colors: [
        Color(0xFFFE34B9),
        Color(0xFFFF26B9),
        Color(0xFFD434FE),
        Color(0xFF903AFF),
      ]);
}
