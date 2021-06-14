import 'package:flutter/material.dart';
import 'package:glimpse/presentation/res/colors.dart';
import 'package:glimpse/presentation/res/dimens.dart';

AppBarTheme get _appBarTheme => const AppBarTheme(
      backgroundColor: appBarBgColor,
      elevation: appBarElevation,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: primaryColor,
          fontSize: appBarFontSize,
        ),
      ),
    );

ThemeData get appTheme {
  return ThemeData(
    primarySwatch: primaryColor,
    appBarTheme: _appBarTheme,
    canvasColor: canvasColor
  );
}
