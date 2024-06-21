import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

// Register http

  void register({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    required String confirmpassword,
  }) async {
    emit(RegisterLoadingState());
    Response response = await http.post(
        Uri.parse("https://learning-gate.onrender.com/api/v1/auth/create-user"),
        headers: {
          'lang': "en"
        },
        body: {
          'firstname': firstname,
          'lastname': lastname,
          'email': email,
          'password': password,
          'confirmPassword': confirmpassword,
        });

    var responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      // print(responseBody);
      // emit succes
      print(responseBody);
      emit(RegisterSuccessState());
    } else {
      //emit faild
      print(responseBody);
      emit(FailedToRegisterState(message: responseBody['message']));
      ///////
    }
  }

  void login({required email, required password}) async {
    emit(LoginLoadingState());
    try {
      Response response = await http.post(
        //request => base url + method url
        Uri.parse('https://learning-gate.onrender.com/api/v1/auth/login'),
        body: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data['status'] == true) {
          debugPrint("User login succes and his Data is :$data");
          emit(LoginSuccessState());
        } else {
          debugPrint("Failed to Login, reason is :${data['message']}");
          emit(FailedToLoginState(message: data['message']));
        }
      }
    } catch (e) {
      emit(FailedToLoginState(message: e.toString()));
    }
  }
}
