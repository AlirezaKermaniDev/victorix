import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    fontFamily: "vazir",
    colorScheme: ThemeData.light().colorScheme.copyWith(
        background: const Color(0xfffafafa),
        primary: Colors.blueAccent[400],
        surface: Colors.black,
        secondary: Colors.grey[600]),
  );
  static ThemeData dark = ThemeData(
    fontFamily: "vazir",
    colorScheme: ThemeData.dark().colorScheme.copyWith(
        background: const Color(0xff15151A),
        primary: Colors.blueAccent[400],
        surface: const Color(0xfffafafa),
        secondary: Colors.grey[600]),
  );
}
