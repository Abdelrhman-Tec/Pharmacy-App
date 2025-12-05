import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/clear_all_button.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartHeader extends StatelessWidget {
  final int totalItems;

  const CartHeader({super.key, required this.totalItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.grey200, width: 0.8.w),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'العناصر ($totalItems)',
            style: AppTextStyle.fontSize14WeightNormal.copyWith(
              color: AppColors.grey600,
            ),
          ),
          ClearAllButton(),
        ],
      ),
    );
  }
}
