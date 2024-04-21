
import 'dart:io';
import 'dart:ui';

import 'package:batch_32b/model/simple_interest_model.dart';
import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  //global key
  final myKey = GlobalKey<FormState>();
// Declare variables
  double? principle;
  double? rate;
  double? time;
  double result = 0;

 SimpleInterestModel? simpleInterestModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.yellow,
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
                  principle = double.parse(value);
                },

                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter principle',
                ),
              ),

              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  rate = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter rate',
                ),
              ),

              const SizedBox(height: 8),

              TextFormField(
                onChanged: (value) {
                  time = double.parse(value);
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
                      simpleInterestModel=  SimpleInterestModel(principle: principle!, rate:rate!, time: time!);
                      result = simpleInterestModel!.si();
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



              ElevatedButton(onPressed: (){
                //check for the validation
                if(myKey.currentState!.validate()){
                  setState(() {
                    result = (principle!*rate!*time!)/100;
                  });
                }
              },
                  child: const Text('Calculate')
              ),

              RichText(text: const TextSpan(
                  text: "Hello ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
              children:<TextSpan>[
                TextSpan(
                  text:'bold ',
                  style: TextStyle(
                    backgroundColor: Colors.green,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
              ),
                TextSpan(
                  text: 'world!',
                ),

                  ]
                  ),
                ),

              RichText(text: const
              TextSpan(
                  text: 'M',
                  style: TextStyle(
                    fontSize: 40,
                    backgroundColor:Colors.green,
                    fontWeight:FontWeight.bold ,
                    color: Colors.yellow,
                  ),
                children: <TextSpan>[
                  TextSpan(
                    text:'y ',
                    style: TextStyle(
                      fontSize: 30,
                      backgroundColor: Colors.green,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  TextSpan(
                    text:'name ',
                    style: TextStyle(
                      fontSize: 30,
                      backgroundColor: Colors.green,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  TextSpan(
                    text:'Earth',
                    style: TextStyle(
                      fontSize: 30,
                      backgroundColor: Colors.green,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  )
                ]
              ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
