import 'package:flutter/material.dart';

class AcountView extends StatelessWidget {
  const AcountView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: ListView(children: [
        Container(
          width: double.infinity,
          height: 354,
          decoration: BoxDecoration(
            color: Color(0xFF090C9B),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          child: Container(
            child: Image.asset(
              "assets/icons/person.png",
              height: 250,
            ),
          ),
        ),
        SizedBox(height: 40),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /////////////////////////////////////////
            Container(
              margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
              padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF6C6C6C)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
                        child: SizedBox(
                          width: 26.3,
                          height: 22.5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                        child: Text(
                          'My Courses',
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Color(0xFF8D979D)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                    width: 11.3,
                    height: 20,
                    child: SizedBox(
                      width: 11.3,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////////////////////////////
            Container(
              margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
              padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF6C6C6C)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
                        child: SizedBox(
                          width: 26.3,
                          height: 22.5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                        child: Text(
                          'Password',
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Color(0xFF8D979D)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                    width: 11.3,
                    height: 20,
                    child: SizedBox(
                      width: 11.3,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////
            Container(
              margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
              padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF6C6C6C)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
                        child: SizedBox(
                          width: 26.3,
                          height: 22.5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                        child: Text(
                          'Email Address',
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Color(0xFF8D979D)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                    width: 11.3,
                    height: 20,
                    child: SizedBox(
                      width: 11.3,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////////////////
            Container(
              margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
              padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF6C6C6C)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
                        child: SizedBox(
                          width: 26.3,
                          height: 22.5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                        child: Text(
                          'Help and Support',
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Color(0xFF8D979D)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                    width: 11.3,
                    height: 20,
                    child: SizedBox(
                      width: 11.3,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            //////////////////////////////////////////
            Container(
              margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
              padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF6C6C6C)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
                        child: SizedBox(
                          width: 26.3,
                          height: 22.5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                        child: Text(
                          'Log Out',
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Color(0xFF8D979D)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                    width: 11.3,
                    height: 20,
                    child: SizedBox(
                      width: 11.3,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),

            ////////////////////////////////////////////
          ],
        ),
      ]),
    );
  }
}
