import 'package:flutter/material.dart';
import 'package:uncm/ui/widgets/product_list/product_item.dart';
import '../../../models/models.dart';

class ProductList extends StatefulWidget {
  final List<Product> products;
  const ProductList({super.key, required this.products});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    if (widget.products.isEmpty) {
      return const Text('No Product found!');
    }
    return GridView.builder(
      itemCount: widget.products.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        final product = widget.products[index];
        return ProductItem(product: product);
      },
    );
  }
}
