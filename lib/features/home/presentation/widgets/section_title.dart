import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: .infinity,
          height: 50,
          child: Text(
            title,
            style: AppTextStyle.fontSize30WeightBold.copyWith(fontSize: 24.sp),
          ),
        )
        .animate(delay: (100).ms)
        .fadeIn(duration: 700.ms)
        .slideY(begin: 0.2, duration: 400.ms, curve: Curves.easeOut);
  }
}
