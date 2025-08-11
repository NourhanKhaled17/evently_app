import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app/theme/base_theme.dart';
import 'package:evently_app/theme/dark_theme.dart';
import 'package:evently_app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'Splash Screen/splash.dart';
import 'Splash Screen/splash2.dart';
import 'cacheHelper/cacheHelper.dart';
import 'home/HomeScreen.dart';
import 'introductionScreen/IntroScreen.dart';
import 'onBoardingScreen/onBoardingScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BaseTheme lightTheme = LightTheme();
    BaseTheme darkTheme = DarkTheme();
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: lightTheme.themeData,
      darkTheme: darkTheme.themeData,
      themeMode: ThemeMode.light,
      initialRoute: CacheHelper.getEligibility() == true
          ? Splash2.routeName
          : Splash.routeName,

      routes: {
        Splash.routeName: (context) => const Splash(),
        Splash2.routeName: (context) => const Splash2(),
        Introscreen.routeName: (context) => const Introscreen(),
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        HomeScreen.routeName: (context) => HomeScreen()
      },
    );
  }
}
