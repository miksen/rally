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
      body2: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
      headline: TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.normal,
      ),
      subtitle: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
      display2: TextStyle(
        fontSize: 96.0,
        fontWeight: FontWeight.w100,
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
    cardTheme: CardTheme(
      margin: EdgeInsets.all(0),
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
      minWidth: 48,
    ),
  );
}
