import 'package:flutter/material.dart';

class UIData {
  static const Color LoginBgColor = Color(0xFF192841);
  static const Color primaryTextColor = Color(0xFF2d4056);
  static const Color accentColor = Color(0xFF1db0e9);
  static const Color attentionColor = Color(0xFF838c97);
  static const Color menuColor = Color(0xFF2d4056);
  static const Color selectedMenuOptionColor = Color(0xFF3d4f63);
  static const Color colorDarker = Color(0xFF1F2D3D);
  static const Color colorPrimaryBackground = Color(0xFF2d4056);
  static const Color colorSecondaryBackground = Color(0xFFeaedf1);
  static const Color colorDark = Color(0xFF2D4057);
  static const Color colorDarkText = Color(0xFFC0C7D0);
  static const Color colorDarkerIcon = Color(0xFF00AFEC);
  static const Color colorActive = Color(0xFFF0F2F3);
  static const Color colorDarkActive = Color(0xFF3D4F64);

  //Routes

  static const String browseRoute = 'browse';
  static const String loginRoute = 'login';
  static const String settingsRoute = 'settings';
  static const String profileRoute = 'profile';

  static ThemeData theme(context) {
    return ThemeData(
      backgroundColor: colorPrimaryBackground,
      accentColor: colorActive,
      canvasColor: colorDark,
    );
  }

  static themeData(context) {
    ThemeData theme = UIData.theme(context);

    return theme.copyWith(
        buttonTheme: buttonTheme(theme), textTheme: textTheme(theme));
  }

  static textTheme(ThemeData theme) {
    return theme.textTheme.copyWith(
        title: TextStyle(
            color: UIData.primaryTextColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
        subtitle: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: UIData.primaryTextColor),
        subhead: TextStyle(
            color: UIData.primaryTextColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold),
        caption: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: UIData.primaryTextColor),
        body1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: UIData.primaryTextColor),
        body2:
            TextStyle(color: UIData.accentColor, fontWeight: FontWeight.w700));
  }

  static buttonTheme(ThemeData theme) {
    return theme.buttonTheme.copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(4.0),
        ),
        buttonColor: UIData.accentColor,
        textTheme: ButtonTextTheme.primary);
  }
}
