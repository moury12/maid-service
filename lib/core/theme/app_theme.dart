import 'package:flutter/material.dart';
import 'package:maid_service/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(

      scaffoldBackgroundColor: AppColors.kWhiteColor,
      textTheme: const TextTheme(
       /* bodyText1: TextStyle(fontSize: 16, color: Colors.black),
        bodyText2: TextStyle(fontSize: 14, color: Colors.black54),
     */ ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blueGrey,
      textTheme: const TextTheme(
        /*bodyText1: TextStyle(fontSize: 16, color: Colors.white),
        bodyText2: TextStyle(fontSize: 14, color: Colors.white70),
      */),
    );
  }
}
