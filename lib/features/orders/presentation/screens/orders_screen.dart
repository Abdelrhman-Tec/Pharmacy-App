import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/widgets/custom_app_bar.dart';
import 'package:pharmacy_app/features/orders/presentation/widgets/order_body.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'الطلبات',automaticallyImplyLeading: false),
      body: OrdersBody(),
    );
  }
}
