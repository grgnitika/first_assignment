import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'arithmetic.dart';
import 'simple_interest.dart';
import 'area_of_circle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Application',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const DashboardScreen(),
      routes: {
        '/arithmetic': (context) => const ArithmeticScreen(),
        '/simple_interest': (context) => const SimpleInterestScreen(),
        '/area_of_circle': (context) => const AreaOfCircleScreen(),
      },
    );
  }
}
