import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String image;

  const CategoryItem({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.w,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 90.w,
            height: 90.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.primaryGreen.withValues(alpha: 0.1),
                  AppColors.primaryGreen.withValues(alpha: 0.03),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -10,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(image, fit: BoxFit.contain),
                ),
              ],
            ),
          ),
          const Gap(8),
          Text(
            title,
            style: AppTextStyle.fontSize20WeightBold.copyWith(
              fontSize: 13.sp,
              color: AppColors.black.withValues(alpha: 0.85),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
