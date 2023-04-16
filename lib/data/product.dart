import '../models/models.dart';
import 'package:uuid/uuid.dart';

final products = <Product>[
  Product(
      id: const Uuid().v1(),
      name: 'Sample',
      description: 'Sample Sample',
      timestamp: DateTime.now(),
      price: 100.0,
      image: 'assets/images/sample-1.png',
      orders: 0,
      ),
  Product(
      id: const Uuid().v1(),
      name: 'Sample',
      description: 'Sample Sample',
      timestamp: DateTime.now(),
      price: 100.0,
      image: 'assets/images/sample-1.png',
      orders: 0,
      ),
  Product(
      id: const Uuid().v1(),
      name: 'Sample',
      description: 'Sample Sample',
      timestamp: DateTime.now(),
      price: 100.0,
      image: 'assets/images/sample-1.png',
      orders: 0,),
  Product(
      id: const Uuid().v1(),
      name: 'Sample',
      description: 'Sample Sample',
      timestamp: DateTime.now(),
      price: 100.0,
      image: 'assets/images/sample-1.png',
      orders: 0,),
  Product(
      id: const Uuid().v1(),
      name: 'Sample',
      description: 'Sample Sample',
      timestamp: DateTime.now(),
      price: 100.0,
      image: 'assets/images/sample-1.png',
      orders: 0,),
  Product(
      id: const Uuid().v1(),
      name: 'Sample',
      description: 'Sample Sample',
      timestamp: DateTime.now(),
      price: 100.0,
      image: 'assets/images/sample-1.png',
      orders: 0,),
  Product(
      id: const Uuid().v1(),
      name: 'Sample',
      description: 'Sample Sample',
      timestamp: DateTime.now(),
      price: 100.0,
      image: 'assets/images/sample-1.png',
      orders: 0,)
];
