import 'dart:ui';

import 'package:batch_32b/model/circle_model.dart';
import 'package:batch_32b/model/simple_interest_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key});

  @override
  State<CircleScreen> createState() => CircleStateScreen();
}

class CircleStateScreen extends State<CircleScreen> {
  //global key
  final myKey = GlobalKey<FormState>();

// Declare variables
  double? radius;
  double result = 0;

  CircleModel? circleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  radius = double.parse(value);

                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ) ,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  labelText: 'Enter radius',
                ),
              ),


              const SizedBox(height: 8),
              // TextFormField(
              //   onChanged: (value) {
              //     rate = double.parse(value);
              //   },
              //   keyboardType: TextInputType.number,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Enter rate',
              //   ),
              // ),

              const SizedBox(height: 8),

              // TextFormField(
              //   onChanged: (value) {
              //     time = double.parse(value);

































              //   },
              //   keyboardType: TextInputType.number,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Enter time',
              //   ),
              // ),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      circleModel = CircleModel(radius: radius!);
                      result = circleModel!.circleSquare();
                    });
                  },
                  child: const Text(
                    'circle square',
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

              ElevatedButton(
                  onPressed: () {
                    //check for the validation
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        result = (radius! * radius! * 3.16);
                      });
                    }
                  },
                  child: const Text('Calculate')),
            ],
          ),
        ),
      ),
    );
  }
}
