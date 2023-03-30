import 'package:flutter/material.dart';
import './ui/screens/screens.dart';
import 'theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Un:cm',
      home: const Home(),
      theme: AppTheme.mainTheme,
    );
  }
}
