import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_gate/moduls/pages/home/home_view.dart';
import 'package:golden_gate/moduls/register/auth_cubit/auth_cubit.dart';
import 'package:golden_gate/moduls/register/auth_cubit/auth_states.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatelessWidget {
  static const String routeName = "log_in";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
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
              height: 500,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 35),
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
              child: Form(
                  key: formKey,
                  child: BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is LoginSuccessState) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeView()));
                      }
                      if (state is FailedToLoginState) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(state.message),
                          ),
                        ));
                      }
                    },
                    builder: (context, state) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "LOGIN",
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Color(0xff6C6C6C),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: theme.textTheme.bodyMedium?.copyWith(
                                  color: Color(0xff6C6C6C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                )),
                            validator: (input) {
                              if (emailController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "Email must not be empty";
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: theme.textTheme.bodyMedium?.copyWith(
                                  color: Color(0xff6C6C6C),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                )),
                            validator: (input) {
                              if (passwordController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "password must not be empty";
                              }
                            },
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          MaterialButton(
                            onPressed: () {
                              //login
                              if (formKey.currentState!.validate() == true) {
                                BlocProvider.of<AuthCubit>(context).login(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                              }
                            },
                            minWidth: 120,
                            height: 40,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: theme.primaryColor,
                            textColor: theme.colorScheme.onSecondary,
                            child: Text(state is LoginLoadingState
                                ? "Loading..."
                                : "Login"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Forget Your Password? ',
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(fontWeight: FontWeight.w300),
                                ),
                                TextSpan(
                                  text: 'Click here',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: Color(0xff090c9b),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  )),
            ),
          ),
        ],

      ),

    );
  }
}
