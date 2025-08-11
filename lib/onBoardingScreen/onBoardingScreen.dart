import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/onBoardingScreen/arrow_button.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../cacheHelper/cacheHelper.dart';
import '../home/HomeScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName ="Onboardingscreen";
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  Widget _buildImage(String assetName) {
    return Image.asset('assets/images/$assetName', width: double.infinity, fit: BoxFit.cover,);
  }

  @override
  Widget build(BuildContext context) {
    final bodyStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).textTheme.titleSmall?.color,
    );

    final pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color:Theme.of(context).primaryColor, ),
        bodyTextStyle: bodyStyle,
        imagePadding: EdgeInsets.zero,
        imageFlex: 2
    );

    return IntroductionScreen(
      globalHeader: Image.asset("assets/images/app_bar_logo.png"),
      pages: [
        PageViewModel(
          title: "find_events_that_inspire_you".tr(),
          body: "onboarding1".tr(),
          image: _buildImage('onboarding1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "effortless_event_planning".tr(),
          body: "onboarding2".tr(),
          image: _buildImage('onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "connect_with_friends_share_moments".tr(),
          body: "onboarding3".tr(),
          image: _buildImage('onboarding3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: (){
        CacheHelper.saveEligibility();
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        },
      onSkip: () => (){},
      showSkipButton: false,
      showBackButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      back:  ArrowButton(icon: Icons.arrow_back),
      next:  ArrowButton(icon: Icons.arrow_forward),
      done:  ArrowButton(icon: Icons.arrow_forward),
      dotsFlex: 2,
      dotsDecorator: DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeSize: Size(20, 7),
        activeColor: Theme.of(context).primaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}