import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/decrement_button.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/increment_button.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/quantity_display.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class QuantityControls extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantityControls({
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
          DecrementButton(isEnabled: quantity > 1, onPressed: onDecrement),
          QuantityDisplay(quantity: quantity),
          IncrementButton(onPressed: onIncrement),
        ],
      ),
    );
  }
}
