import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_data.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartItemsList extends StatelessWidget {
  final List<CartItemData> items;

  const CartItemsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: items
            .map(
              (item) => CartItemWidget(
                data: item,
                onDelete: () {
                  // حذف المنتج
                },
                onQuantityChanged: (newQuantity) {
                  // تحديث الكمية
                },
              ),
            )
            .toList(),
      ),
    );
  }
}