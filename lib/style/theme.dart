import 'package:flutter/material.dart';

Color colorDark = const Color(0xFF2D4057);
Color colorDarkText = const Color(0xFFC0C7D0);
Color colorDarker = const Color(0xFF1F2D3D);
Color colorDarkerIcon = const Color(0xFF00AFEC);
Color colorActive = const Color(0xFFF0F2F3);
Color colorDarkActive = const Color(0xFF3D4F64);
Color colorPrimaryBackground = const Color(0xFFEAEDF1);


ThemeData getTheme() {
  return new ThemeData(
    backgroundColor: colorPrimaryBackground,
    accentColor: colorActive,
    canvasColor: colorDark,
  );
}