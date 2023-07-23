import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customPage2Color().purple,
      child: Center(child: Text('PAGE 2')),
    );
  }
}

class customPage2Color {
  final purple = Colors.purple.shade400;
}

