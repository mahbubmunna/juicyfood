
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:juicyfood/functions/common.dart';

import 'login.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Get.offNamedUntil('/Login', (route) => false);
  }


  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/img/$assetName.jpg', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    changeStatusBarColor(context);

    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Select a restaurant",
          body:
          "Here is a simple but powerful rule: always give people more than what they expect to get.",
          image: _buildImage('restaurant'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Choose your food",
          body:
          "Here is a simple but powerful rule: always give people more than what they expect to get.",
          image: _buildImage('food'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Secure Payment",
          body:
          "Here is a simple but powerful rule: always give people more than what they expect to get.",
          image: _buildImage('payment'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Deliver to your door",
          body: "Here is a simple but powerful rule: always give people more than what they expect to ge",
          image: _buildImage('deliver'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get 24/7 service",
          body: 'Here is a simple but powerful rule: always give people more than what they expect to get',
          image: _buildImage('service'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Sign In', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xFFD60665),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

}

