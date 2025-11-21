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
}
