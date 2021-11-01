import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  final String text;

  CalculateButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff6b117f),
      margin: EdgeInsets.only(top: 5),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
