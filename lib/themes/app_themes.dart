import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  final ThemeData lightTheme = ThemeData.light().copyWith(
      colorScheme: ColorScheme.light(
          primary: AppColors.darkColor,
          secondary: AppColors.secondaryColor,
          background: AppColors.lightColor));

  final ThemeData darkTheme = ThemeData.dark().copyWith(
      colorScheme: ColorScheme.dark(
          primary: AppColors.lightColor,
          secondary: AppColors.secondaryColor,
          background: AppColors.darkColor));
}
