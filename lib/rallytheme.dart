import 'package:flutter/material.dart';

const Color rallyBackground = Colors.black;
const Color rallyScaffoldBackgroundColor = Color(0xFF222222);
const Color rallyCardBackground = Color(0xFF333333);
const Color rallyGreen = Color(0xFF1EB980);
const Color darkRallyGreen = Color(0xFF045D56);

ThemeData buildRallyThemeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    backgroundColor: rallyBackground,
    scaffoldBackgroundColor: rallyScaffoldBackgroundColor,
    primaryColor: rallyGreen,
    accentColor: rallyGreen,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      body1: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
      headline: TextStyle(
        fontSize: 96.0,
        fontWeight: FontWeight.bold,
      ),
      subtitle: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: rallyBackground,
      textTheme: TextTheme(
        title: TextStyle(
          fontSize: 34.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    ),
    cardTheme: CardTheme(color: rallyCardBackground),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
  );
}
