import 'package:flutter/material.dart';
import '../../../models/models.dart';

import './order_item.dart';

class OrderList extends StatefulWidget {
  final List<Product> orders;

  const OrderList({super.key, required this.orders});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext build) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: ListView.builder(
        itemCount: widget.orders.length,
        itemBuilder: (context, index) {
          return OrderItem(
            order: widget.orders[index],
          );
        },
      ),
    );
  }
}
