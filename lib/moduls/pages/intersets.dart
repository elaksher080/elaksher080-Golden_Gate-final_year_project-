import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intersets extends StatelessWidget {
  static const String routeName = "intersets";

  const Intersets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: Container(
            padding: EdgeInsets.only(left: 5),
            child: Image.asset("assets/icons/logo2.png")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 0, 33.5),
            child: Text(
              'Choose your interests',
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                height: 1.2575,
                color: Color(0xff000000),
              ),
            ),
          ),
          ////////////////////////////////////////
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 45),
            padding: EdgeInsets.fromLTRB(13.49, 5, 146, 5),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff6c6c6c)),
              borderRadius: BorderRadius.circular(55),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(3, 0, 11.49, 0),
                  width: 15.02,
                  height: 17,
                  child: Icon(
                    Icons.search_rounded,
                    size: 20,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search interests',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///////////////////////////////////////
        ],
      ),
    );
  }
}
