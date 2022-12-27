import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      iconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.light,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: Colors.white,
      focusColor: Colors.black,
      secondaryHeaderColor: CupertinoColors.lightBackgroundGray,
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
        headlineMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
        titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
      //.apply(body displayColor: _lightTextColor),
    );
