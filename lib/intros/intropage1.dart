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
      backgroundColor: customBlueColor().blueColor,
      body: Center(
        child: Column(
          children: [
    
            const SizedBox(height: 200),
    
            _menuText(),
    
            const SizedBox(height: 10),
    
            Lottie.network('https://lottie.host/8cf4e7e1-ca15-4f8e-95db-c38da46fde41/ZyR2nfUdkx.json')
    
          ],
        ),
      ), 
    );
  }
}

class _menuText extends StatelessWidget {
  const _menuText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      totalRepeatCount: 1,
      animatedTexts: [TyperAnimatedText(
        'Let\'s start from scratch!',
        textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: customBlueColor().greyColor)
      )],
    );
  }
}

class customBlueColor {
  final blueColor = Colors.purple.shade900;
  final greyColor = Colors.grey.shade400;
}

