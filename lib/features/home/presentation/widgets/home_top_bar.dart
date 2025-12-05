import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';

class HomeTopBar extends StatelessWidget {
  final String locationPlaceholder;
  const HomeTopBar({super.key, required this.locationPlaceholder});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryGreen.withValues(alpha: 0.3),
          radius: 26.r,
          child: Icon(
            Icons.person,
            size: 27,
            color: AppColors.primaryGreen.withValues(alpha: 0.8),
          ),
        ),
        const Gap(10),
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const Gap(10),
              Text(
                'عبدالرحمن ندا',
                style: AppTextStyle.fontSize18WeightNormal.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Gap(5),
              Text(
                maxLines: 1,
                overflow: .ellipsis,
                ' العنوان : $locationPlaceholder',
                style: AppTextStyle.fontSize14WeightNormal.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
