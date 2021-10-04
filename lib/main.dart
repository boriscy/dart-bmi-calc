import 'package:flutter/material.dart';
import 'input.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0C22),
        scaffoldBackgroundColor: Color(0xFF2C273D),
        accentColor: Color(0xFFEB1556),
      ),
      home: InputPage(),
    );
  }
}
