import 'package:flutter/material.dart';
import 'package:app/styles/colors.dart';
import 'package:flutter/services.dart';

enum ThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeType defaultTheme = ThemeType.light;

  bool? isDark = false;
  Color? kPrimaryGold = AppColors.kGold;
  Color? kSecondary = AppColors.kSecondary;
  Color? kSecondaryLight = AppColors.kSecondaryLight;
  Color kBlack;
  Color kWhite;

  /// Default constructor
  AppTheme({
    this.isDark,
    this.kSecondary,
    this.kPrimaryGold,
    this.kSecondaryLight,
    required this.kBlack,
    required this.kWhite,
  });

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(
          isDark: false,
          kSecondary: AppColors.kSecondary,
          kSecondaryLight: AppColors.kSecondaryLight,
          kPrimaryGold: AppColors.kGold,
          kBlack: AppColors.kBlack,
          kWhite: AppColors.kWhite,
        );

      case ThemeType.dark:
        return AppTheme(
          isDark: true,
          kBlack: AppColors.kBlack,
          kWhite: AppColors.kWhite,
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
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, //i like transaparent :-)
          systemNavigationBarColor: Colors.white, // navigation bar color
          statusBarIconBrightness: Brightness.dark, // status bar icons' color
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
    );
    return t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
