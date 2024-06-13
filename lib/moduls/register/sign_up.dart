import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_gate/moduls/pages/home/home_view.dart';
import 'package:golden_gate/moduls/register/auth_cubit/auth_cubit.dart';
import 'package:golden_gate/moduls/register/auth_cubit/auth_states.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/login.dart';

class SiginUp extends StatelessWidget {
  final firstnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  static const String routeName = "sigin_up";

  SiginUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeView()));
        } else if (state is FailedToRegisterState) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: Text(
                      state.message,
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Color(0xffF8FCFF),
          body: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0.0,
                left: 0.0,
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
                        child: RichText(
                          text: TextSpan(
                            text: "Welcome ",
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
                  height: 600,
                  width: MediaQuery.of(context).size.width - 40,
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
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "SIGN UP",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Color(0xff6C6C6C),
                            fontWeight: FontWeight.w600,
                          ),
                          // color: Color(0xff6C6C6C),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          child: Form(
                            key: formKey,
                            child: Column(
                              children: [
                                _textFieldItem(
                                    controller: firstnameController,
                                    hintText: "User Name",
                                    prefixIcon: Icon(Icons.person)),
                                SizedBox(
                                  height: 8,
                                ),
                                /////////////////////////////////////////////
                                _textFieldItem(
                                    controller: emailController,
                                    hintText: "E-mail",
                                    prefixIcon: Icon(Icons.email_outlined)),
                                SizedBox(
                                  height: 8,
                                ),
                                ////////////////////////////////////////////////////////////
                                _textFieldItem(
                                    isSecure: true,
                                    controller: passwordController,
                                    hintText: "Password",
                                    prefixIcon: Icon(Icons.numbers_rounded)),
                                SizedBox(
                                  height: 8,
                                ),
                                ////////
                                ///////////////////////////////////////////////
                                _textFieldItem(
                                    isSecure: true,
                                    controller: confirmpasswordController,
                                    hintText: "Confirm Password",
                                    prefixIcon: Icon(Icons.numbers_rounded)),
                                SizedBox(
                                  height: 50,
                                ),
                                /////////////////////////////////////////
                                MaterialButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      //SGIN UP
                                      BlocProvider.of<AuthCubit>(context)
                                          .register(
                                              firstname:
                                                  firstnameController.text,
                                              email: emailController.text,
                                              password: passwordController.text,
                                              confirmpassword:
                                                  confirmpasswordController
                                                      .text);
                                    }
                                  },
                                  child: Text(
                                      // state is RegisterLoadingState ? "Loading...."
                                      //     :
                                      "SIGN UP"),
                                  color: theme.primaryColor,
                                  textColor: theme.colorScheme.onSecondary,
                                  minWidth: 60,
                                  height: 60,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LogIn()),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          style: theme.textTheme.bodySmall
                                              ?.copyWith(color: Colors.white),
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Already have an account ? ',
                                              style: theme.textTheme.bodySmall
                                                  ?.copyWith(
                                                color: Color(0xff6c6c6c),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Login',
                                              style: theme.textTheme.bodySmall
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget _textFieldItem(
    {bool? isSecure,
    required TextEditingController controller,
    required String hintText,
    required Icon prefixIcon}) {
  return TextFormField(
    controller: controller,
    validator: (input) {
      if (controller.text.isEmpty) {
        return "$hintText must not be empty";
      } else {
        return null;
      }
    },
    obscureText: isSecure ?? false,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff6C6C6C)),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      hintText: hintText,
    ),
  );
}
