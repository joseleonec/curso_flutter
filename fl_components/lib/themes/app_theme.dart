import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;
  static final ThemeData lightThemeData = ThemeData.light().copyWith(
    //
    primaryColor: primaryColor,

    //
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
      // toolbarTextStyle: TextStyle(
      // color: Colors.indigo,
      // ),
      // titleTextStyle: TextStyle(
      // color: Colors.indigo,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primaryColor,
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        shape: const StadiumBorder(),
      ),
    ),
  );

  static final ThemeData darkThemeData = ThemeData.dark().copyWith(
    //
    // primaryColor: Colors.white,
    primaryColor: primaryColor,
    //
    appBarTheme: const AppBarTheme(
      // backgroundColor: primaryColor,
      color: primaryColor,
      elevation: 0,
      // toolbarTextStyle: TextStyle(
      //   color: Colors.indigo,
      // ),
      // titleTextStyle: TextStyle(
      //   color: Colors.indigo,
      // ),
    ),
    scaffoldBackgroundColor: Colors.black,
    // change font color and font size of text in listtile.
    textTheme: lightThemeData.textTheme.copyWith(
      bodyText1: lightThemeData.textTheme.bodyText1?.copyWith(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
    listTileTheme: const ListTileThemeData(
      selectedColor: Colors.white,
      textColor: Colors.white,
      style: ListTileStyle.list,

      // selectedColor: primaryColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primaryColor,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
  );
}
