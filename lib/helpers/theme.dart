import 'package:flutter/material.dart';

// light theme
final lightTheme = ThemeData(
  primaryColor: Color(0xffffffff),
  accentColor: Color(0xff6c6cff),
  indicatorColor: Color(0xff393d69),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  brightness: Brightness.light,
  textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 40,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 22,
        // color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.white,
      )),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),
);

// dark theme
final darkTheme = ThemeData(
  primaryColor: Color(0xff393d69),
  accentColor: Color(0xffff6cb5),
  indicatorColor: Color(0xffffffff),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  brightness: Brightness.dark,
  fontFamily: "SourceCodePro",
  textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 22,
        // color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.white,
      )),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
  ),
);
