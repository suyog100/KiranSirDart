import 'dart:html';

import 'package:flutter/material.dart';

class ColumnScreenState extends StatelessWidget {
  const ColumnScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('column'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){},child: Text("Enter first number"))),
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){},child: Text("Enter second number"))),

            TextButton(onPressed:(){},child:const Text("Add") ),
            TextButton(onPressed:(){}, child:const Text("Subtract") ),
            TextButton(onPressed:(){}, child:const Text("Divide") ),
            TextButton(onPressed:(){}, child:const Text("Multiply") ),

            ElevatedButton(onPressed: (){}, child: const Text('Calculate'))



          ],

        ),
      ),
    );
  }
}
