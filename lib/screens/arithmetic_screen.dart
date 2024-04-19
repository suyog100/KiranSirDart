
import 'package:flutter/material.dart';

import '../model/arthemetic_model.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
// Declare variables
  int? first;
  int? second;
  int result = 0;

  ArithmeticModel? arithmeticModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter First No',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
              ),
            ),
            const SizedBox(height: 8),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first! + second!;
                  });
                },
                child: const Text('Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    ArithmeticModel(first: first!,second:second!) ;
                    result = arithmeticModel!.add();
                  });
                },
                child: const Text('Sub',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),


            // Display information
            Text(
              'Result is : $result',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}