import 'package:flutter/material.dart';

/// Application theme configuration
class AppColors {
  // Private constructor
  AppColors._();

  // ==================== Primary Colors ====================
  /// Main green color for pharmacy theme
  static const Color primaryGreen = Color(0xFF4CAF50);
  static const Color primaryGreenLight = Color(0xFFA7DAAA);

  static const Color primaryGreenDark = Color(0xFF005005);
  static const Color scaffoldBackground = Color(0xffF6F8F6);

  /// White color
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite = Color(0xFFFAFAFA);

  // ==================== Secondary Colors ====================
  static const Color secondaryBlue = Color(0xFF1976D2);
  static const Color secondaryOrange = Color(0xFFFF6F00);
  static const Color secondaryTeal = Color(0xFF00897B);

  // ==================== Accent Colors ====================
  static const Color accentMint = Color(0xFF81C784);
  static const Color accentLime = Color(0xFFCDDC39);
  static const Color accentCyan = Color(0xFF00BCD4);

  // ==================== Status Colors ====================
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFE53935);
  static const Color warning = Color(0xFFFFA726);
  static const Color info = Color(0xFF29B6F6);

  // ==================== Neutral Colors ====================
  static const Color black = Color(0xFF000000);
  static const Color grey900 = Color(0xFF212121);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey50 = Color(0xFFFAFAFA);

  // ==================== Background Colors ====================
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceLight = Color(0xFFFAFAFA);
  static const Color surfaceDark = Color(0xFF1E1E1E);

  // ==================== Text Colors ====================
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textDisabled = Color(0xFFBDBDBD);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);

  static LinearGradient get gradient => LinearGradient(
    colors: [primaryGreen, primaryGreenLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
