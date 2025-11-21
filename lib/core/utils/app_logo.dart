import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';

class AppLogo extends StatelessWidget {
  final double size;
  final double iconSize;
  final IconData icon;

  const AppLogo({
    super.key,
    this.size = 80,
    this.iconSize = 40,
    this.icon = Icons.health_and_safety,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.w,
        height: size.h,
        decoration: BoxDecoration(
          gradient: AppColors.gradient,
          shape: .circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.white.withValues(alpha: 0.50),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Icon(icon, size: iconSize, color: Colors.white),
      ),
    );
  }
}
