import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../order_modifier.dart';
import '../../../models/models.dart';

class ProductItem extends StatefulWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool ordered = false;

  @override
  void initState() {
    final getOrderItem =
        Provider.of<OrderManager>(context, listen: false).getOrderItem;
    final orderExist = getOrderItem(widget.product.id);

    if (orderExist != null) {
      ordered = true;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width / 2);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
    return Image(
      height: width / 2,
      image: AssetImage(widget.product.image),
    );
  }

  Widget buildCardContent(
      {required BuildContext context, required double width}) {
    final titleText = Theme.of(context).textTheme.titleMedium;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.product.name,
                  style: TextStyle(
                    fontWeight: titleText?.fontWeight,
                    fontSize: titleText?.fontSize,
                  )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$ ${widget.product.price}',
                    ),
                    buildOrderIcon(context),
                  ]),
            ]),
      ),
    );
  }

  Widget buildOrderIcon(BuildContext context) {
    return Consumer<OrderManager>(
      builder: (context, orderManager, child) {
        if (!ordered) {
          return GestureDetector(
              onTap: () {
                final addProduct = orderManager.addOrder;
                addProduct(widget.product);
                setState(() {
                  ordered = true;
                });
              },
              child: const Icon(
                Icons.shopping_cart,
                size: 20.0,
              ));
        } else {
          // TO:DO Transform this into its own widget
          final modifyProduct = orderManager.modifyOrder;
          void increment() {
            modifyProduct(widget.product.id, widget.product.orders + 1);
          }

          void decrement() {
            if (widget.product.orders == 1) {
              final removeProduct = orderManager.removeOrder;
              removeProduct(widget.product.id);
              setState(() {
                ordered = false;
              });
            } else {
              modifyProduct(widget.product.id, widget.product.orders - 1);
            }
          }

          return OrderModifier(
              decrement: decrement,
              increment: increment,
              orders: widget.product.orders);
        }
      },
    );
  }
}
