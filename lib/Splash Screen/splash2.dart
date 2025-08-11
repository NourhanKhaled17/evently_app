import 'dart:async';
import 'package:flutter/material.dart';
import '../home/HomeScreen.dart';

class Splash2 extends StatefulWidget {
  static const String routeName = "splash2";
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
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
      context, MaterialPageRoute(builder: (context) => HomeScreen()),
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