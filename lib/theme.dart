import 'package:flutter/material.dart';

class AppTheme {
  static const purpleUncm = Color(0xFF616e9b);
  static ThemeData mainTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: purpleUncm,
    fontFamily: 'Open Sans',
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 14.0, 
        fontFamily: 'Open Sans', 
        fontWeight: FontWeight.w300
        ),
      titleMedium: TextStyle(
        fontSize: 14.0,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w600
      ),
      titleLarge: TextStyle(
        fontSize: 36.0,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w600
      )
    )
  );
}