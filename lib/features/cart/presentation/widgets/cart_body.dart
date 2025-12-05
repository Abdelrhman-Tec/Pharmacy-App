import 'package:pharmacy_app/features/cart/presentation/widgets/cart_header.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_data.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_list.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartBody extends StatelessWidget {
  final List<CartItemData> items;
  final int totalItems;
  final double totalPrice;

  const CartBody({
    super.key,
    required this.items,
    required this.totalItems,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CartHeader(totalItems: totalItems),
          Gap(8),
          Expanded(child: CartItemsList(items: items)),
        ],
      ),
    );
  }
}
