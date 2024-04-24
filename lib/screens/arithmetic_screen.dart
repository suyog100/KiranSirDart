
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
        title: const Text("Prasanna Jung Thapa"),
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
                first = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                labelText: "Enter the first no."
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                second = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
              ),
            ),
            const SizedBox(height: 8),
            RadioListTile(
                title: const Text('Add'),
                value: 1.0,
                groupValue: _result,
                onChanged: (value) {
                  setState(() {
                    _result = value!;
                  });
                }),
            RadioListTile(
                title: const Text('Subtract'),
                value: 2.0,
                groupValue: _result,
                onChanged: (value) {
                  setState(() {
                    _result = value!;
                  });
                }),
            RadioListTile(
                title: const Text('Multiply'),
                value: 3.0,
                groupValue: _result,
                onChanged: (value) {
                  setState(() {
                    _result = value!;
                  });
                }),
            RadioListTile(
                title: const Text('Divide'),
                value: 4.0,
                groupValue: _result,
                onChanged: (value) {
                  setState(() {
                    _result = value!;
                  });
                }),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (first != null && second != null && _result != null) {
                    setState(() {
                      switch (_result) {
                        case 1.0:
                          output = first! + second!;
                          break;
                        case 2.0:
                          output = first! - second!;
                          break;
                        case 3.0:
                          output = first! * second!;
                          break;
                        case 4.0:
                          output = first! / second!;
                          break;
                      }
                    });
                  }
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Display informatuion
            Text(
              'The result is : $output',
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
