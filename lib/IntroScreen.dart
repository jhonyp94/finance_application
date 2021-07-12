import 'package:financeapplication/LoginPage.dart';
import 'package:financeapplication/MainPage.dart';
import 'package:financeapplication/RegisterStep1.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import 'HomePage.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MainPage()),
    );
  }

//  Widget _buildFullscrenImage() {
//    return Image.asset(
//      'assets/fullscreen.jpg',
//      fit: BoxFit.cover,
//      height: double.infinity,
//      width: double.infinity,
//      alignment: Alignment.center,
//    );
//  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Lottie.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
//      globalBackgroundColor: Colors.white,
//      globalHeader: Align(
//        alignment: Alignment.topRight,
//        child: SafeArea(
//          child: Padding(
//            padding: const EdgeInsets.only(top: 16, right: 16),
//            child: _buildImage('finance_intro1.json', 100),
//          ),
//        ),
//      ),
      pages: [
        PageViewModel(
          title: "Manage your wallet",
          body:
              "Manage your wallet and card with one click.",
          image: _buildImage('finance_intro1.json'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Improve your financial",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: _buildImage('finance_intro2.json'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Let's get started",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Never a better time than now to start",
                style: bodyStyle
              ),
              Text("manage your finance easily", style: bodyStyle),
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyAlignment: Alignment.topCenter,
            imageAlignment: Alignment.bottomCenter,
          ),
          image: _buildImage('finance_intro3.json'),
          reverse: false,
          footer: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(RegisterStep1());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: Text(
                        "Create Account"
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(158, 183, 255, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: Text(
                        "Login to account",
                        style: TextStyle(
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(158, 183, 255, 1),),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      showDoneButton: false,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.white),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color.fromRGBO(158, 183, 255, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
