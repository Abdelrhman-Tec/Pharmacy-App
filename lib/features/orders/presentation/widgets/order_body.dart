import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/orders/presentation/widgets/order_card.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            OrderCard(
              order: {
                'id': 1234,
                'status': 'pending',
                'total': 59.99,
                'street': '123 Main St',
                'city': 'Cairo',
                'state': 'Cairo',
                'zip_code': '12345',
                'created_at': '2024-06-15 14:30',
              },
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
