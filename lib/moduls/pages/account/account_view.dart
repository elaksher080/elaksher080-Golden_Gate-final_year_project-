import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/login/login.dart';
import 'package:golden_gate/moduls/pages/home/HomePage.dart';

import 'edit_profile.dart';

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
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          " Profile",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          )),
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/icons/person.png",
                      height: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Profile name",
                    style: theme.textTheme.titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     /////////////////////////////////////////
        //     Container(
        //       margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
        //       padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
        //       decoration: BoxDecoration(
        //         border: Border.all(color: Color(0xFF6C6C6C)),
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
        //                 child: SizedBox(
        //                   width: 26.3,
        //                   height: 22.5,
        //                 ),
        //               ),
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
        //                 child: Text(
        //                   'My Courses',
        //                   style: theme.textTheme.bodySmall
        //                       ?.copyWith(color: Color(0xFF8D979D)),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Container(
        //             margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
        //             width: 11.3,
        //             height: 20,
        //             child: SizedBox(
        //               width: 11.3,
        //               height: 20,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     ///////////////////////////////////////////
        //     Container(
        //       margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
        //       padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
        //       decoration: BoxDecoration(
        //         border: Border.all(color: Color(0xFF6C6C6C)),
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
        //                 child: SizedBox(
        //                   width: 26.3,
        //                   height: 22.5,
        //                 ),
        //               ),
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
        //                 child: Text(
        //                   'Password',
        //                   style: theme.textTheme.bodySmall
        //                       ?.copyWith(color: Color(0xFF8D979D)),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Container(
        //             margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
        //             width: 11.3,
        //             height: 20,
        //             child: SizedBox(
        //               width: 11.3,
        //               height: 20,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     ////////////////////////////////////////
        //     Container(
        //       margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
        //       padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
        //       decoration: BoxDecoration(
        //         border: Border.all(color: Color(0xFF6C6C6C)),
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
        //                 child: SizedBox(
        //                   width: 26.3,
        //                   height: 22.5,
        //                 ),
        //               ),
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
        //                 child: Text(
        //                   'Email Address',
        //                   style: theme.textTheme.bodySmall
        //                       ?.copyWith(color: Color(0xFF8D979D)),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Container(
        //             margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
        //             width: 11.3,
        //             height: 20,
        //             child: SizedBox(
        //               width: 11.3,
        //               height: 20,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     ///////////////////////////////
        //     Container(
        //       margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
        //       padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
        //       decoration: BoxDecoration(
        //         border: Border.all(color: Color(0xFF6C6C6C)),
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
        //                 child: SizedBox(
        //                   width: 26.3,
        //                   height: 22.5,
        //                 ),
        //               ),
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
        //                 child: Text(
        //                   'Help and Support',
        //                   style: theme.textTheme.bodySmall
        //                       ?.copyWith(color: Color(0xFF8D979D)),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Container(
        //             margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
        //             width: 11.3,
        //             height: 20,
        //             child: SizedBox(
        //               width: 11.3,
        //               height: 20,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     //////////////////////////////////////////
        //     Container(
        //       margin: EdgeInsets.fromLTRB(21, 0, 21, 24),
        //       padding: EdgeInsets.fromLTRB(14, 15, 19.8, 12.5),
        //       decoration: BoxDecoration(
        //         border: Border.all(color: Color(0xFF6C6C6C)),
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 0, 20.7, 0),
        //                 child: SizedBox(
        //                   width: 26.3,
        //                   height: 22.5,
        //                 ),
        //               ),
        //               Container(
        //                 margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
        //                 child: Text(
        //                   'Log Out',
        //                   style: theme.textTheme.bodySmall
        //                       ?.copyWith(color: Color(0xFF8D979D)),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Container(
        //             margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
        //             width: 11.3,
        //             height: 20,
        //             child: SizedBox(
        //               width: 11.3,
        //               height: 20,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //     ////////////////////////////////////////////
        //   ],
        // ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
            );
          },
          child: AccountCard(
            iconOne: Icons.import_contacts_sharp,
            title: "My Courses",
            iconTwo: Icons.arrow_forward_ios_rounded,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
            );
          },
          child: AccountCard(
            iconOne: Icons.lock_outline,
            title: "Password",
            iconTwo: Icons.arrow_forward_ios_rounded,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
            );
          },
          child: AccountCard(
            iconOne: Icons.email_outlined,
            title: "Email Address",
            iconTwo: Icons.arrow_forward_ios_rounded,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfile()),
            );
          },
          child: AccountCard(
            iconOne: Icons.phone,
            title: "Help and Support",
            iconTwo: Icons.arrow_forward_ios_rounded,
          ),
        ),
        GestureDetector(
          onTap: () {
            _showMyDialog(context);
          },
          child: AccountCard(
            iconOne: Icons.logout,
            title: "Log Out",
            iconTwo: Icons.arrow_forward_ios_rounded,
          ),
        ),
      ]),
    );
  }
}

class AccountCard extends StatelessWidget {
  final String title;
  final IconData iconOne, iconTwo;

  AccountCard({
    super.key,
    required this.title,
    required this.iconOne,
    required this.iconTwo,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, bottom: 20),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF6C6C6C),
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    iconOne,
                    color: Color(0xFF6C6C6C),
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: Color(0xFF6C6C6C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Icon(
                iconTwo,
                color: Color(0xFF6C6C6C),
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  var theme = Theme.of(context);
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (context) {
      return AlertDialog(
        title: const Text('Are you sure ?'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('you will be logged out of your account'),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => LogIn()),
                      (Route<dynamic> route) => false);
                },
                child: Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFB6A168),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Log out",
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFC2DAFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
