import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/login/login.dart';

import '../register/sign_up.dart';

class OnBoarding2 extends StatelessWidget {

  static const String routeName = "on_boarding2";

  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
          padding: EdgeInsets.fromLTRB(21, 102, 20.06, 8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8fcff),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                  padding: EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
              margin: EdgeInsets.fromLTRB(0, 0, 2.94, 0),
              child: Text(
                "Learn at your pace. Limitless courses await.  ",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
                Container(
                  padding: EdgeInsets.only(top: 8, bottom: 5, left: 0, right: 0),
              constraints: BoxConstraints(
                maxWidth: 281,
              ),
              child: Text(
                'explore courses that fit your passion and pace. ',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
                Container(
                  padding: EdgeInsets.only(
                      top: 0, bottom: 0, left: 0, right: 0),
                  width: 348.94,
                  height: 260,
                  child: Image.asset(
                    'assets/icons/caracter2.png',
                    width: 348.94,
                    height: 260,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 0, left: 0, right: 0),
              width: 42,
              height: 9,
              child: Image.asset(
                'assets/icons/dot2.png',
                width: 42,
                height: 9,
              ),
            ),
                Container(


                  margin: EdgeInsets.only(top: 40, bottom: 0, left: 0, right: 0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                  height: 52,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff090c9b)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SiginUp()),
                          );
                        },
                        child: Container(
                          // button1Dpz (I1:620;10:81)
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Center(
                  child:
                  Container(

                    child:
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LogIn()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child:
                      RichText(
                        textAlign: TextAlign.center,
                        text:
                        TextSpan(
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Already have an account ? ',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Color(0xff6c6c6c),
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: theme.textTheme.bodySmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


              ])),
    );
  }
}
