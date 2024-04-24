import 'dart:ui';

import 'package:batch_32b/model/circle_model.dart';
import 'package:batch_32b/model/simple_interest_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => CircleStateScreen();
}

class CircleStateScreen extends State<DesignScreen> {
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
        title: const Text("New Design"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: const Row(
          children: [
            Column(
              children: [
                Icon(
                  Icons.call,
                ),
                SizedBox(height: 4,)
              ],
            )
          ],
        ),
        ),
      );
  }
}
