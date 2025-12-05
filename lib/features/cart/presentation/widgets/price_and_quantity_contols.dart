import 'package:pharmacy_app/features/cart/presentation/widgets/product_price.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/quantity_controls.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class PriceAndQuantityControls extends StatelessWidget {
  final String price;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const PriceAndQuantityControls({
    super.key,
    required this.price,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuantityControls(
          quantity: quantity,
          onIncrement: onIncrement,
          onDecrement: onDecrement,
        ),
        ProductPrice(price: price),
      ],
    );
  }
}
