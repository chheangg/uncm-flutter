import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uncm/models/order_manager.dart';
import '../widgets/order_list/order_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Consumer<OrderManager>(
      builder: (context, orderManager, child) {
        if (orderManager.orders.isEmpty) {
          return const Text('Order is empty...');
        }
        return OrderList(orders: orderManager.orders);
      },
    ));
  }
}
