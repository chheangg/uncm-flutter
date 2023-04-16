import 'package:flutter/material.dart';
import 'package:uncm/models/product.dart';

int findProduct(List<Product> products, String productId) =>
    products.indexWhere((product) => product.id == productId);

class OrderManager extends ChangeNotifier {
  final List<Product> _orders = [];
  List<Product> get orders => List.unmodifiable(_orders);

  Product? getOrderItem(String productId) {
    final productIndex = findProduct(_orders, productId);
    if (productIndex == -1) {
      return null;
    }
    return _orders[productIndex];
  }

  void addOrder(Product product) {
    product.orders = 1;
    _orders.add(product);
    notifyListeners();
  }

  void modifyOrder(String productId, int amount) {
    final productIndex = findProduct(_orders, productId);
    _orders[productIndex].orders = amount;
    notifyListeners();
  }

  void removeOrder(String productId) {
    final productIndex = findProduct(_orders, productId);
    _orders.removeAt(productIndex);
    notifyListeners();
  }
}
