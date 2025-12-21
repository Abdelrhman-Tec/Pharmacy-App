import 'package:pharmacy_app/core/widgets/custom_app_bar.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/cart_body.dart';
import '../../../home/presentation/widgets/index.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'السلة', automaticallyImplyLeading: false),
      body: CartBody(),
    );
  }
}
