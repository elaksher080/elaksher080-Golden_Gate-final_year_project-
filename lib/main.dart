import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_gate/core/theme/application_theme.dart';
import 'package:golden_gate/moduls/onboarding/on_boarding1.dart';
import 'package:golden_gate/moduls/register/auth_cubit/auth_cubit.dart';
import 'package:golden_gate/moduls/splash_screen/splash_screen1.dart';
import 'package:golden_gate/moduls/splash_screen/splash_screen2.dart';

void main() {
  runApp(const MyApplcation());
}

class MyApplcation extends StatelessWidget {
  const MyApplcation({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        themeMode: ThemeMode.light,
        theme: ApplicationTheme.lightTheme,
        // darkTheme: ApplicationTheme.darkTheme ,
        initialRoute: SplashScreen1.routeName,

        routes: {
          SplashScreen1.routeName: (context) => SplashScreen1(),
          SplashScreen2.routeName: (context) => SplashScreen2(),
          OnBoarding1.routeName: (context) => OnBoarding1(),
        },
      ),
    );
  }
}
