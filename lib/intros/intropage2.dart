import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customPurpleColor().purple,
      child: Center(child: Text('PAGE 2')),
    );
  }
}

class customPurpleColor {
  final purple = Colors.purple.shade400;
}

