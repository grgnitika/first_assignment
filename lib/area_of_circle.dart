import 'package:flutter/material.dart';
import 'dart:math';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AreaOfCircleScreenState createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final TextEditingController _radiusController = TextEditingController();
  String _result = "";

  void _calculateArea() {
    final double radius = double.tryParse(_radiusController.text) ?? 0;
    final double area = pi * radius * radius;
    setState(() {
      _result = "Area of Circle: $area";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Area of Circle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _radiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter radius'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateArea,
              child: const Text('Calculate Area'),
            ),
            const SizedBox(height: 20),
            Text(_result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
