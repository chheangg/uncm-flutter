import 'package:flutter/material.dart';

import './home_screen.dart';
import './order_screen.dart';
import './status_screen.dart';
import './profile_screen.dart';

final screens = [
    HomeScreen(),
    OrderScreen(),
    StatusScreen(),
    ProfileScreen(),
];

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: screens[pageIndex],
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 12.0
        ),
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[50],
        selectedItemColor: Colors.orange[300],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping), label: 'Status'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ]);
  }
}
