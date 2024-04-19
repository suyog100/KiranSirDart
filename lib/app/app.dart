
import 'package:batch_32b/screens/dashboard_screen.dart';
import 'package:batch_32b/screens/simple_interest_screen.dart';
import 'package:flutter/material.dart';

import '../screens/arithmetic_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dashboard(),
    );
  }}