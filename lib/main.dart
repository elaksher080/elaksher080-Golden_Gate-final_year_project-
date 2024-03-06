import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/onboarding/on_boarding1.dart';
import 'package:golden_gate/moduls/splash_screen/splash_screen1.dart';
import 'package:golden_gate/moduls/splash_screen/splash_screen2.dart';

void main() {
  runApp(const MyApplcation());
}

class MyApplcation extends StatelessWidget {
  const MyApplcation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen1.routeName,
      routes: {
        SplashScreen1.routeName: (context) => const SplashScreen1(),
        SplashScreen2.routeName: (context) => const SplashScreen2(),
        OnBoarding1.routeName: (context) => const OnBoarding1(),

      },

    );
  }
}
