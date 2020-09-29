import 'package:flutter/material.dart';

// light theme
final lightTheme = ThemeData(
  primaryColor: Color(0xffffffff),
  accentColor: Color(0xff6c6cff),
  indicatorColor: Color(0xff393d69),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.black),
    ),
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
      headline1: TextStyle(color: Colors.white),
    ),
  ),
);
