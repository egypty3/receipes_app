import 'package:flutter/material.dart';

final ThemeData base = ThemeData.light();

TextTheme _buildTextTheme(TextTheme base){
  return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 40.0,
        color: const Color((0xFF807a6b)),
      )
  );
}

ThemeData buildTheme() {
    return base.copyWith(
      textTheme: _buildTextTheme(base.textTheme),
    );
}