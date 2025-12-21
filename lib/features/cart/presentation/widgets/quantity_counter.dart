import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../home/presentation/widgets/index.dart';

class QuantityCounter extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantityCounter({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey50,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.grey200, width: 0.8.w),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: quantity > 1 ? onDecrement : null,
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
                color: quantity > 1
                    ? AppColors.primaryGreen
                    : AppColors.grey400,
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Text(
              '$quantity',
              style: AppTextStyle.fontSize14WeightBold.copyWith(
                color: AppColors.grey900,
              ),
            ),
          ),

          InkWell(
            onTap: onIncrement,
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
              child: Icon(
                Icons.add,
                size: 16.sp,
                color: AppColors.primaryGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
