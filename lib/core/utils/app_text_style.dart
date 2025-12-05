import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';

class AppTextStyle {
  static TextStyle get fontSize30WeightBold =>
      TextStyle(fontSize: 30, fontWeight: .bold, fontFamily: 'CairoBold');

  static TextStyle get fontSize18WeightNormal =>
      TextStyle(fontSize: 18.sp, color: AppColors.grey400);

  static TextStyle get fontSize14WeightNormal =>
      TextStyle(fontSize: 14.sp, color: AppColors.primaryGreen);

  static TextStyle get fontSize20WeightBold =>
      TextStyle(fontSize: 20.sp, color: AppColors.black, fontWeight: .bold);
  static TextStyle get fontSize24WeightBold =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w700);

  static TextStyle get fontSize24WeightNormal =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

  static TextStyle get fontSize20WeightNormal =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);

  // Medium Large
  static TextStyle get fontSize18WeightBold =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w700);

  // Medium
  static TextStyle get fontSize16WeightBold =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w700);

  static TextStyle get fontSize16WeightSemiBold =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

  static TextStyle get fontSize16WeightNormal =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  // Small Medium
  static TextStyle get fontSize15WeightBold =>
      const TextStyle(fontSize: 15, fontWeight: FontWeight.w700);

  static TextStyle get fontSize15WeightSemiBold =>
      const TextStyle(fontSize: 15, fontWeight: FontWeight.w600);

  static TextStyle get fontSize15WeightNormal =>
      const TextStyle(fontSize: 15, fontWeight: FontWeight.w400);

  // Base
  static TextStyle get fontSize14WeightBold =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w700);

  static TextStyle get fontSize14WeightSemiBold =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  // Small
  static TextStyle get fontSize13WeightBold =>
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w700);

  static TextStyle get fontSize13WeightSemiBold =>
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w600);

  static TextStyle get fontSize13WeightNormal =>
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w400);

  // Extra Small
  static TextStyle get fontSize12WeightBold =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w700);

  static TextStyle get fontSize12WeightSemiBold =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w600);

  static TextStyle get fontSize12WeightNormal =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  // Tiny
  static TextStyle get fontSize11WeightBold =>
      const TextStyle(fontSize: 11, fontWeight: FontWeight.w700);

  static TextStyle get fontSize11WeightNormal =>
      const TextStyle(fontSize: 11, fontWeight: FontWeight.w400);

  static TextStyle get fontSize10WeightNormal =>
      const TextStyle(fontSize: 10, fontWeight: FontWeight.w400);

  // Helper Methods for Customization
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  static TextStyle withHeight(TextStyle style, double height) {
    return style.copyWith(height: height);
  }

  static TextStyle withFontFamily(TextStyle style, String fontFamily) {
    return style.copyWith(fontFamily: fontFamily);
  }

  static TextStyle withLetterSpacing(TextStyle style, double spacing) {
    return style.copyWith(letterSpacing: spacing);
  }
}
