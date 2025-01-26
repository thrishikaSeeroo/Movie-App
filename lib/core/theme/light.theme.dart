import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  fontFamily: "SourceSansPro",
  primaryColor: const Color(0xFF000080),
  cardColor: const Color(0xFFEFF0F5),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStatePropertyAll(Size(double.infinity, 40)),
      backgroundColor: MaterialStatePropertyAll(Color(0xFFF03C38)),
      elevation: MaterialStatePropertyAll(0),
      padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontFamily: "SourceSansPro",
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.zero),
          foregroundColor: MaterialStatePropertyAll(
            Color(0xFF24323E),
          ),
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontFamily: "SourceSansPro",
            fontWeight: FontWeight.w600,
            fontSize: 16,
          )))),
  disabledColor: const Color(0xFF72738E),
  dividerColor: const Color(0xFFBFBFCC),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w700,
      color: Color(0xFF333456),
      fontSize: 26,
    ),
    titleMedium: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w700,
      color: Color(0xFF333456),
      fontSize: 20,
    ),
    titleSmall: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w700,
      color: Color(0xFF333456),
      fontSize: 18,
    ),
    headlineLarge: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w600,
      color: Color(0xFF333456),
      fontSize: 26,
    ),
    headlineMedium: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w600,
      color: Color(0xFF333456),
      fontSize: 20,
    ),
    headlineSmall: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w600,
      color: Color(0xFF333456),
      fontSize: 18,
    ),
    bodyLarge: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
      color: Color(0xFF333456),
      fontSize: 18,
    ),
    bodyMedium: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
      color: Color(0xFF333456),
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
      color: Color(0xFF333456),
      fontSize: 14,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFBFBFCC))),
    floatingLabelStyle: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
      color: Color(0xFF333456),
      fontSize: 22,
    ),
    labelStyle: TextStyle(
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
      color: Color(0xFF333456),
      fontSize: 22,
    ),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFBFBFCC)),
    ),
  ),
);
