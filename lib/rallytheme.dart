import 'package:flutter/material.dart';

// RallyBackground: black
const Color rallyBackground = Colors.black;
// RallyGreen: #1EB980
const Color rallyGreen = Color(0xFF1EB980);
// DartRallyGreen: #045D56
const Color darkRallyGreen = Color(0xFF045D56);

ThemeData buildRallyThemeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    backgroundColor: rallyBackground,
    primaryColor: rallyGreen,
    accentColor: rallyGreen,
    buttonTheme: Theme.of(context)
        .buttonTheme
        .copyWith(textTheme: ButtonTextTheme.accent),
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
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
          color: rallyBackground,
          textTheme: TextTheme(
            title: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
  );
}
