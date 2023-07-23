import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customBlueColor().blue,
      child: Center(child: Text('PAGE 1')),
    );
  }
}

class customBlueColor {
  final blue = Colors.blue.shade300;
}

