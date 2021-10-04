import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  IconCard({this.icon, this.text, this.size = 80});

  final IconData icon;
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, size: size),
        SizedBox(height: 10),
        Text(text, style: TextStyle(fontSize: 18, color: Colors.grey))
      ],
    );
  }
}
