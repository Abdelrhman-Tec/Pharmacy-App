import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class QuantityDisplay extends StatelessWidget {
  final int quantity;

  const QuantityDisplay({super.key, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Text(
        '$quantity',
        style: AppTextStyle.fontSize14WeightBold.copyWith(
          color: AppColors.grey900,
        ),
      ),
    );
  }
}
