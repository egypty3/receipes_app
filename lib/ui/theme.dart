import 'package:flutter/material.dart';

final ThemeData base = ThemeData.light();

TextTheme _buildTextTheme(TextTheme base){
  return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 40.0,
        color: const Color((0xFF807a6b)),
      ),
    // New code:
    // Used for the recipes' title:
    title: base.title.copyWith(
      fontFamily: 'Merriweather',
      fontSize: 15.0,
      color: const Color(0xFF807A6B),
    ),
    // Used for the recipes' duration:
    caption: base.caption.copyWith(
      color: const Color(0xFFCCC5AF),
    ),
  );
}

ThemeData buildTheme() {
    return base.copyWith(
      textTheme: _buildTextTheme(base.textTheme),
      // New code:
      primaryColor: const Color(0xFFFFF8E1),
      indicatorColor: const Color(0xFF807A6B),
      scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      accentColor: const Color(0xFFFFF8E1),
      iconTheme: IconThemeData(
        color: const Color(0xFFCCC5AF),
        size: 20.0,
      ),
      buttonColor: Colors.white,
    );
}