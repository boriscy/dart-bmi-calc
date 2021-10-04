import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF121524);
const inactiveCardColor = Color(0xFF3022AD);

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color = Colors.red, this.child, this.active});

  Color color = Colors.red; //inactiveCardColor;
  final Widget child;
  bool active = false;

  @override
  Widget build(BuildContext context) {
    void setActive() {
      this.active = !active;
    }

    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: this.child,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
