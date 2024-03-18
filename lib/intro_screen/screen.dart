import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:unisafe/login/login.dart';
import 'package:unisafe/intro_screen/page1.dart';
import 'package:unisafe/intro_screen/page2.dart';
import 'package:unisafe/intro_screen/page3.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WelcomeScreen> {
//keep track if we are in last page
  bool onLastPage = false;

//_controller to keep track of witch page we are !
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //page view
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: const [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // skip button
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              //indc
              SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(activeDotColor: Colors.white)),

              // next/ done button
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const LogIn();
                          }),
                        );
                      },
                      child: const Text(
                        'Done',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInCubic);
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
            ],
          ),
        )
      ],
    ));
  }
}
