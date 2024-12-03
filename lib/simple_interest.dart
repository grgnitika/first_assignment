import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SimpleInterestScreenState createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  String _result = "";

  void _calculateSimpleInterest() {
    final double principal = double.tryParse(_principalController.text) ?? 0;
    final double rate = double.tryParse(_rateController.text) ?? 0;
    final double time = double.tryParse(_timeController.text) ?? 0;
    final double interest = (principal * rate * time) / 100;
    setState(() {
      _result = "Simple Interest: $interest";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _principalController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Enter principal amount'),
            ),
            TextField(
              controller: _rateController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Enter rate of interest'),
            ),
            TextField(
              controller: _timeController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Enter time period (years)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateSimpleInterest,
              child: const Text('Calculate Simple Interest'),
            ),
            const SizedBox(height: 20),
            Text(_result, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
