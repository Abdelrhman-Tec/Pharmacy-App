import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;

  const IncrementButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(7.r),
        bottomLeft: Radius.circular(7.r),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(color: AppColors.grey200, width: 0.8.w),
          ),
        ),
        child: Icon(Icons.add, size: 16.sp, color: AppColors.primaryGreen),
      ),
    );
  }
}