import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartItemDivider extends StatelessWidget {
  const CartItemDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 1.h, color: AppColors.grey100);
  }
}

class CartItemSubtotal extends StatelessWidget {
  final double subtotal;

  const CartItemSubtotal({super.key, required this.subtotal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'المجموع الفرعي',
            style: AppTextStyle.fontSize14WeightNormal.copyWith(
              color: AppColors.grey600,
            ),
          ),
          Text(
            '${subtotal.toStringAsFixed(2)} ر.س',
            style: AppTextStyle.fontSize15WeightBold.copyWith(
              color: AppColors.grey900,
            ),
          ),
        ],
      ),
    );
  }
}
