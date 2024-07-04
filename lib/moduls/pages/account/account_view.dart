import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/login/login.dart';
import 'package:golden_gate/moduls/pages/account/password_view.dart';
import 'package:golden_gate/moduls/pages/home/HomePage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

import 'edit_profile.dart';
import 'email_address_view.dart';
import 'mycourse_view.dart';

class AcountView extends StatefulWidget {
  const AcountView({super.key});

  @override
  _AcountViewState createState() => _AcountViewState();
}

class _AcountViewState extends State<AcountView> {
  File? _image;
  final String _imageKey = 'profile_image';

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      _saveImage(pickedFile.path);
    }
  }

  Future<void> _saveImage(String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_imageKey, path);
  }

  Future<void> _loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString(_imageKey);
    if (imagePath != null) {
      setState(() {
        _image = File(imagePath);
      });
    }
  }

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
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: _image == null
                        ? AssetImage("assets/icons/person.png")
                        : FileImage(_image!) as ImageProvider,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          icon: Icon(Icons.camera_alt_outlined, color: Color(0xFF090C9B)),
                          onPressed: _pickImage,
                        ),
                      ),
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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyCourseView()),
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
              MaterialPageRoute(builder: (context) => PasswordView()),
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
              MaterialPageRoute(builder: (context) => EmailAddressView()),
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
