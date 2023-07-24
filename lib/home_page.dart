import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('duck'),
        backgroundColor: customHomePageColors().greyColor),

      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class customHomePageColors {
  final greyColor = Colors.grey.shade800;
}