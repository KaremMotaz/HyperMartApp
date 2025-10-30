import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_styles.dart';

abstract class ThemeManager {
  static ThemeData getAppTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        centerTitle: true,
        titleTextStyle: AppStyles.bold22.copyWith(color: AppColors.black),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.black,
        ),
      ),
    );
  }
}
