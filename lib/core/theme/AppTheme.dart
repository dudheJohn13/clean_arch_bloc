import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.blue,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(),
      primaryColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.redAccent,
      ),
      useMaterial3: true,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        titleLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        labelLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        labelSmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      inputDecorationTheme: InputDecorationTheme(),
      primaryColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.redAccent,
      ),
      useMaterial3: true,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        titleLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        labelLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        labelSmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
