import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final double fontSize;
  final Color fillColor;

  RoundIconButton(
      {this.onPressed,
      this.text,
      this.fontSize = 30.0,
      this.fillColor = kRoundIconColor});

  @override
  Widget build(BuildContext context) {
    //Timer timer;

    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<CircleBorder>(
              CircleBorder(),
            ),
            backgroundColor: MaterialStateProperty.all(kRoundIconColor),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            fixedSize: MaterialStateProperty.all(Size.square(50))),
        child: Text(text,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
