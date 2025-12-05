import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartBottomBar extends StatelessWidget {
  final double totalPrice;
  final VoidCallback onCheckoutPressed;

  const CartBottomBar({
    super.key,
    required this.totalPrice,
    required this.onCheckoutPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(
          top: BorderSide(color: AppColors.grey200, width: 0.8.w),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey300.withValues(alpha: 0.1),
            blurRadius: 10.r,
            offset: Offset(0, -2.h),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'الإجمالي',
                  style: AppTextStyle.fontSize14WeightNormal.copyWith(
                    color: AppColors.grey600,
                  ),
                ),
                Gap(2),
                Text(
                  '${totalPrice.toStringAsFixed(2)} ر.س',
                  style: AppTextStyle.fontSize18WeightBold.copyWith(
                    color: AppColors.primaryGreen,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            width: 150.w,
            height: 60.h,
            text: 'إتمام الشراء',
            gradient: AppColors.gradient,
            onPressed: onCheckoutPressed,
          ),
        ],
      ),
    );
  }
}
