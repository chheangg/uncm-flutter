import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/models.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width / 2) - 25;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildCardImage(width),
            buildCardContent(width: width, context: context),
          ],
        ),
      ),
    );
  }

  Widget buildCardImage(double width) {
    return Expanded(
      child: Image(
        image: AssetImage(product.image),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildCardContent(
      {required BuildContext context, required double width}) {
    final titleText = Theme.of(context).textTheme.titleMedium;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 4.0),
      Text(product.name,
          style: TextStyle(
            fontWeight: titleText?.fontWeight,
            fontSize: titleText?.fontSize,
          )),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '\$ ${product.price}',
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 16.0,
                width: 16.0,
                child: IconButton(
                    padding: const EdgeInsets.all(0.0),
                    iconSize: 20.0,
                    onPressed: () {
                      final addProduct =
                          Provider.of<OrderManager>(context, listen: false)
                              .addOrder;
                      addProduct(product);
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                    )),
              ),
            ),
          ]),
    ]);
  }
}
