import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  bool _isRepeatingAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customPage1Color().blueColor,
      body: Center(
        child: Column(
          children: [
    
            const SizedBox(height: 200),
    
            _page1Text(),
    
            const SizedBox(height: 20),
    
            Lottie.network('https://lottie.host/8cf4e7e1-ca15-4f8e-95db-c38da46fde41/ZyR2nfUdkx.json')
    
          ],
        ),
      ), 
    );
  }
}

class _page1Text extends StatelessWidget {
  const _page1Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      pause: Duration(seconds: 30),
      totalRepeatCount: 1,
      animatedTexts: [TyperAnimatedText(
        'Let\'s start from scratch!',
        textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: customPage1Color().whiteColor)
      )],
    );
  }
}

class customPage1Color {
  final blueColor = Colors.purple.shade900;
  final whiteColor = Colors.white;
}

