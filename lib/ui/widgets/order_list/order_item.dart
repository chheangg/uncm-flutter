import 'package:flutter/material.dart';
import 'package:uncm/models/product.dart';

class OrderItem extends StatelessWidget {
  final Product order;
  const OrderItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Image(
            image: AssetImage(order.image)
          ),
          title: Text(order.name),
          subtitle: Text(order.description),
        ),
    );
  }
}
