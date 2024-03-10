import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/intersets.dart';

class LogIn extends StatelessWidget {
  static const String routeName = "log_in";

  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF8FCFF),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0.0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/photos/rigester.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: RichText(text: TextSpan(
                      text: "Welcome Back!",
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 230,
            child: Container(
              height: 380,
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    ),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6C6C6C),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 2,
                  //   width: 55,
                  //   color: Color(0xff6C6C6C) .withOpacity(0.3),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail_outline_rounded,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff8f8f8f)),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(8)),
                              ),
                              ////////////////////////////////////////////////////
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff8f8f8f)),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(8)),
                              ),
                              hintText: "E-Mail",

                              ////////////////////////////////////////////////////
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /////////////////////////////////////////////////////////////
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
            margin: EdgeInsets.only(top: 100, bottom: 0, left: 0, right: 0),
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
                      MaterialPageRoute(builder: (context) => Intersets()),
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
          /////////////////////////////////////////////////////////////
        ],

      ),

    );
  }
}
