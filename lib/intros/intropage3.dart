import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customPage3Color().orange,
      child: Center(child: Text('PAGE 3')),
    );
  }
}

class customPage3Color {
  final orange = Colors.orange.shade600;
}