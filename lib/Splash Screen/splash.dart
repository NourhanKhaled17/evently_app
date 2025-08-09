import 'dart:async';
import 'package:evently_app/introductionScreen/IntroScreen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const String routeName = "splash1";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  startSplashScreenTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, navigationToNextPage);
  }

  void navigationToNextPage() async {
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => Introscreen()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/logo.png",),
      ),
    );
  }
}