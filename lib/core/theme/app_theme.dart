import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    fontFamily: "vazir",
    colorScheme: ThemeData.light().colorScheme.copyWith(
        background: Colors.white,
        onBackground: const Color(0xffF8F8FB),
        primary: const Color(0xff0062F5),
        surface: Colors.black,
        secondary: const Color(0xffACAFB2)),
  );
  static ThemeData dark = ThemeData(
    fontFamily: "vazir",
    colorScheme: ThemeData.dark().colorScheme.copyWith(
        background: const Color(0xff15151A),
        onBackground:  Color.fromARGB(255, 12, 12, 15),
        primary: const Color(0xff0062F5),
        surface: Colors.white,
        secondary: Colors.white70),
  );
}
