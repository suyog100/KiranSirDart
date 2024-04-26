import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
      //taking the text to center without wrapping the container
        // inside center
        child: Container(
          width: double.infinity,
          height:double.infinity,
          alignment: Alignment.centerRight,

          // decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.amberAccent,
          //     border: Border.all(
          //       color: Colors.black,
          //       width: 2,
          //     )
          // ),
          child: const Text('I am a container'),
        ),

        //wrapping the container inside center
        // child: Center(
        //   child: Container(
        //     width: 200,
        //     height:200,
        //     alignment: Alignment.centerRight,
        //
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Colors.amberAccent,
        //       border: Border.all(
        //         color: Colors.black,
        //         width: 2,
        //       )
        //     ),
        //     child: const Text('I am a container'),
        //   ),
        // ),
      ),
    );
  }
}
