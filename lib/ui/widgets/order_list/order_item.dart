import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uncm/models/order_manager.dart';
import 'package:uncm/models/product.dart';
import 'package:uncm/ui/widgets/order_modifier.dart';

class OrderItem extends StatelessWidget {
  final Product order;
  const OrderItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final orderManager = Provider.of<OrderManager>(context, listen: false);
    final modifyProduct = orderManager.modifyOrder;
    void increment() {
      modifyProduct(order.id, order.orders + 1);
    }

    void decrement() {
      if (order.orders == 1) {
        final removeProduct = orderManager.removeOrder;
        removeProduct(order.id);
      } else {
        modifyProduct(order.id, order.orders - 1);
      }
    }

    return Card(
      child: ListTile(
        leading: Image(image: AssetImage(order.image)),
        title: Text(order.name),
        subtitle: Text(order.description),
        trailing: SizedBox(
          width: 80.0,
          child: OrderModifier(
            decrement: decrement,
            increment: increment,
            orders: order.orders,
          ),
        ),
      ),
    );
  }
}
