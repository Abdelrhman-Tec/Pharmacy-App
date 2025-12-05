import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_count.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_data.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_divider.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartItemWidget extends StatefulWidget {
  final CartItemData data;
  final VoidCallback onDelete;
  final Function(int) onQuantityChanged;

  const CartItemWidget({
    super.key,
    required this.data,
    required this.onDelete,
    required this.onQuantityChanged,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  late int _currentQuantity;
  double get _subtotal => widget.data.calculateSubtotal(_currentQuantity);

  @override
  void initState() {
    super.initState();
    _currentQuantity = widget.data.quantity;
  }

  void _incrementQuantity() {
    setState(() {
      _currentQuantity++;
    });
    widget.onQuantityChanged(_currentQuantity);
  }

  void _decrementQuantity() {
    if (_currentQuantity > 1) {
      setState(() {
        _currentQuantity--;
      });
      widget.onQuantityChanged(_currentQuantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey200.withValues(alpha: 0.15),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
        border: Border.all(color: AppColors.grey100, width: 0.8.w),
      ),
      child: Column(
        children: [
          CartItemContent(
            data: widget.data,
            currentQuantity: _currentQuantity,
            onDelete: widget.onDelete,
            onIncrement: _incrementQuantity,
            onDecrement: _decrementQuantity,
          ),
          CartItemDivider(),
          CartItemSubtotal(subtotal: _subtotal),
        ],
      ),
    );
  }
}

