import 'package:flutter/material.dart';
import 'round_icon_button.dart';
import 'constants.dart';

class PlusMinusCard extends StatelessWidget {
  final String text;
  final double value;
  final Function onPlus;
  final Function onMinus;
  final double minValue;
  final double maxValue;

  PlusMinusCard(
      {this.text,
      this.value,
      this.onPlus,
      this.onMinus,
      this.minValue = 0,
      this.maxValue});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        Text(text, style: kLabelStyle),
        Text(value.round().toString(), style: kBigNumberStyle),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RoundIconButton(
            text: '-',
            onPressed: () {
              double val = value;
              if (value - 1 >= minValue) {
                val--;
              }
              onMinus(val);
            },
          ),
          SizedBox(width: 1),
          RoundIconButton(
            text: '+',
            onPressed: () {
              double val = value;
              if (value + 1 <= maxValue) {
                val++;
              }
              onMinus(val);
            },
          )
        ])
      ]),
    );
  }
}
