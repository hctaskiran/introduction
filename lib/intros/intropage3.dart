import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customPage3Colors().orangeColor,
      body: Center(
        child: Column(
          children: [

            const SizedBox(height: 200),

            _page3Text(),

            const SizedBox(height: 20),

            Lottie.network('https://lottie.host/1c16e794-f742-4fda-a060-fa5f435f0a5b/BiVMq4B3qY.json')

          ],
        ),
      ),
    );
  }
}

class customPage3Colors {
  final orangeColor = Colors.orange.shade600;
  final whiteColor = Colors.white;
}

class _page3Text extends StatelessWidget {
  const _page3Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: AnimatedTextKit(
        totalRepeatCount: 1,
        pause: Duration(seconds: 30),
        animatedTexts: [TyperAnimatedText(
          'Choose one of the activity you like and start!',
          textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: customPage3Colors().whiteColor)
        )],
      ),
    );
  }
}