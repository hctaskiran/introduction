import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage0 extends StatefulWidget {
  const IntroPage0({super.key});

  @override
  State<IntroPage0> createState() => _IntroPage0State();
}

class _IntroPage0State extends State<IntroPage0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customPage0Colors().brownColor,
      body: Center(
        child: Column(
          children: [
            
            const SizedBox(height: 200),

            _page0Text(),

            const SizedBox(height: 20,),

            Lottie.network('https://lottie.host/0cec8b88-f922-4684-8ff5-d84f4634610c/Le1FQ8mJwi.json', frameRate: FrameRate(60))
          ],
        ),
      ),
    );
  }
}

class _page0Text extends StatelessWidget {
  const _page0Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      totalRepeatCount: 1,
      pause: Duration(seconds: 30),
      animatedTexts: [TyperAnimatedText(
        'Hello there, ready for take off?',
        textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: customPage0Colors().whiteColor)
      )],
    );
  }
}

class customPage0Colors {
  final whiteColor = Colors.white;
  final brownColor = Colors.brown.shade400;
}