import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/splash_screen/splash_screen2.dart';

class SplashScreen1 extends StatelessWidget {

  static const String routeName = "splash_screen1";

  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 1),
            () {
          Navigator.pushReplacementNamed(context, SplashScreen2.routeName);
        }
    );

    var mediaQuery = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Center(
          child:
          Image.asset(
            'assets/icons/logo.png',
            fit: BoxFit.cover,
          ),
        )

    );
  }
}

