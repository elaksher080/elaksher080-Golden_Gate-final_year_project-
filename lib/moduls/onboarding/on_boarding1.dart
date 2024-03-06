import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/onboarding/on_boarding2.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding1 extends StatelessWidget {
  static const String routeName = "on_boarding1";

  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // onboarding1VyY (1:617)
          padding: EdgeInsets.fromLTRB(21, 102, 20.06, 8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8fcff),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 10, bottom: 0, left: 0, right: 0),
                  margin: EdgeInsets.fromLTRB(0, 0, 2.94, 0),
                  child: Text(
                    "Step forward for your future !",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 8, bottom: 20, left: 0, right: 0),
                  constraints: BoxConstraints(
                    maxWidth: 281,
                  ),
                  child: Text(
                    'Learn new skills for your \n present and your future. ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 0, bottom: 0, left: 0, right: 0),
                  width: 348.94,
                  height: 260,
                  child: Image.asset(
                    'assets/icons/caracter1.png',
                    width: 348.94,
                    height: 260,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10, bottom: 0, left: 0, right: 0),
                  width: 42,
                  height: 9,
                  child: Image.asset(
                    'assets/icons/dot1.png',
                    width: 42,
                    height: 9,
                  ),
                ),
                Container(


                  margin: EdgeInsets.only(
                      top: 100, bottom: 0, left: 0, right: 0),
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
                          backgroundColor: MaterialStatePropertyAll(
                              Color(0xff090c9b)),

                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                OnBoarding2()),
                          );
                        },
                        child: Container(
                          // button1Dpz (I1:620;10:81)
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
    );
  }
}
