import 'dart:async';

import 'package:flutter/material.dart';

import '../onboarding/on_boarding1.dart';


class SplashScreen2 extends StatelessWidget {

  static const String routeName = "splash_screen2";

  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 1),
            () {
          Navigator.pushReplacementNamed(context, OnBoarding1.routeName);
        }
    );

    var mediaQuery = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Center(
          child: Image.asset(
            'assets/icons/newlogo.png',
        fit: BoxFit.cover,
      ),
        )

    );
  }
}

