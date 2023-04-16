import 'package:flutter/material.dart';

import '../widgets/product_list/product_list.dart';

// Sample Data
import '../../data/product.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProductList(
      products: products,
    ));
  }
}
