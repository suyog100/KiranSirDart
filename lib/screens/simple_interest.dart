
import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
// Declare variables
  int? principle;
  int? rate;
  int? time;
  double result = 0;

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
                principle = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter principle',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter rate',
              ),
            ),
            const SizedBox(height: 8),

            TextField(
              onChanged: (value) {
                time = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter time',
              ),
            ),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (principle!*rate!*time!)/100;
                  });
                },
                child: const Text('Add',
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
