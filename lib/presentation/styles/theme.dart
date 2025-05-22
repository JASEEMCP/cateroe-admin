import 'package:flutter/material.dart';
import 'package:app/styles/colors.dart';

enum ThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeType defaultTheme = ThemeType.light;

  bool isDark;
  Color kBlack;
  Color kWhite;
  Color spaPink;

  Color spaDivider;

  /// Default constructor
  AppTheme({
    required this.isDark,
    required this.kBlack,
    required this.kWhite,
    required this.spaPink,
    required this.spaDivider,
  });

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(
          isDark: false,
          kBlack: AppColors.kBlack,
          kWhite: AppColors.kWhite,
          spaPink: AppColors.kBlack,
          spaDivider: AppColors.kBlack,
        );

      case ThemeType.dark:
        return AppTheme(
          isDark: true,
          kBlack: AppColors.kBlack,
          kWhite: AppColors.kBlack,
          spaPink: AppColors.primaryDark,
          spaDivider: AppColors.kWhite,
        );
    }
  }

  ThemeData get themeData {
    var t = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: kWhite,
      appBarTheme: AppBarTheme(
        backgroundColor: kWhite,
        surfaceTintColor: kWhite,
      ),
    );
    return t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
