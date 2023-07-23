import 'package:flutter/material.dart';
import 'package:introduction_tutorial/intros/intropage1.dart';
import 'package:introduction_tutorial/intros/intropage2.dart';
import 'package:introduction_tutorial/intros/intropage3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PAGES
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          Container(
            alignment: Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap:() {
                    _controller.jumpToPage(2);
                  },
                  child: Text('Skip')),

                SmoothPageIndicator(controller: _controller, count: _customCounts().pageCount),

                onLastPage ?
                GestureDetector(
                  onTap:() {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }  
                     )
                    );
                  },
                  child: Text('Done'))
                  :
                  GestureDetector(
                  onTap:() {
                    _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.linear);
                  },
                  child: Text('Next'))
              ],
            ),
          )
        ],
      )
    );
  }
}



class _customCounts {
  final pageCount = 3;
}
