import 'package:flutter/material.dart';

class OrderModifier extends StatelessWidget {
  final void Function() decrement;
  final void Function() increment;
  final int orders;
  const OrderModifier({
    super.key,
    required this.decrement,
    required this.increment,
    required this.orders,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: decrement,
            child: const Icon(
              Icons.remove,
              size: 20.0,
            )),
        const SizedBox(width: 16.0),
        Text(orders.toString()),
        const SizedBox(width: 16.0),
        GestureDetector(
            onTap: increment,
            child: const Icon(Icons.add, size: 20.0)),
      ],
    );
  }
}
