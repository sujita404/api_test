import 'package:api_test/view/screens/home.dart';
import 'package:flutter/material.dart';
class ApiTest extends StatelessWidget {
  const ApiTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}