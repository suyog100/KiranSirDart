import 'package:batch_32b/screens/circle_screen.dart';
import 'package:batch_32b/screens/desing_screen.dart';
import 'package:batch_32b/screens/simple_interest_screen.dart';
import 'package:flutter/material.dart';

import 'arithmetic_screen.dart';
import 'column_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children:[
          SizedBox(width: double.infinity,
             child: ElevatedButton(onPressed: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>const ArithmeticScreen() ));
             },child: Text("Calculation"))),


          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const SimpleInterest() ));
            },child: Text("Simple interest"),),),


          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const CircleScreen() ));
            },child: Text("Area of Circle"),),),

          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const DesignScreen() ));
            },child: Text("New UI"),),),

          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const ColumnScreenState() ));
            },child: const Text("column"),),),
        ]

            ),
          );
    }
  }

