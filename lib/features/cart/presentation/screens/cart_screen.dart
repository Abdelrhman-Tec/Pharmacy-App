import 'package:pharmacy_app/core/widgets/custom_app_bar.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_body.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_bottom_bar.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_item_data.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'السلة'),
      body: const CartBody(
        items: [
          CartItemData(
            name: "دواء مسكن",
            description:
                "دواء فعال لتخفيف الألم والالتهابات، مناسب للاستخدام اليومي.",
            price: "15.00",
            quantity: 2,
            image: "assets/products_image/الادوية.png",
          ),
        ],
        totalItems: 3,
        totalPrice: 45.00,
      ),
      bottomNavigationBar: CartBottomBar(
        totalPrice: 45.00,
        onCheckoutPressed: () {},
      ),
    );
  }
}




















