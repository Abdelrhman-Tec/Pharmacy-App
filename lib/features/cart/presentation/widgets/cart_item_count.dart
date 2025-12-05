import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_data.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/delete_button.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/price_and_quantity_contols.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/product_and_delete.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/product_image_cart.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartItemContent extends StatelessWidget {
  final CartItemData data;
  final int currentQuantity;
  final VoidCallback onDelete;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CartItemContent({
    super.key,
    required this.data,
    required this.currentQuantity,
    required this.onDelete,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImageCart(image: data.image),
          Gap(14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ProductNameAndDelete(name: data.name, onDelete: onDelete),
                Gap(6),
                ProductDescription(description: data.description),
                Gap(12),
                PriceAndQuantityControls(
                  price: data.price,
                  quantity: currentQuantity,
                  onIncrement: onIncrement,
                  onDecrement: onDecrement,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
