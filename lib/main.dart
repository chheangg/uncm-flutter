import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uncm/models/order_manager.dart';

import './ui/screens/screens.dart';
import 'theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OrderManager())
      ],
      child: MaterialApp(
        title: 'Un:cm',
        home: const MainScreen(),
        theme: AppTheme.mainTheme,
      ),
    );
  }
}
