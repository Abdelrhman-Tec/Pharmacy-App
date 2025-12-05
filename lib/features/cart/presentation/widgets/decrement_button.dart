import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class DecrementButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onPressed;

  const DecrementButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(7.r),
        bottomRight: Radius.circular(7.r),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: AppColors.grey200, width: 0.8.w),
          ),
        ),
        child: Icon(
          Icons.remove,
          size: 16.sp,
          color: isEnabled ? AppColors.primaryGreen : AppColors.grey400,
        ),
      ),
    );
  }
}
