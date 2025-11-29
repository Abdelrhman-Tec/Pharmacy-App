import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
        color: AppColors.grey200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          children: [
            Text(
              'ابحث عن دواء او منتج',
              style: AppTextStyle.fontSize14WeightNormal.copyWith(
                color: AppColors.grey400,
              ),
            ),
            const Spacer(),
            Container(
              width: 80.w,
              height: 60.h,
              decoration: BoxDecoration(
                gradient: AppColors.gradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'بحث',
                  style: AppTextStyle.fontSize18WeightNormal.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
