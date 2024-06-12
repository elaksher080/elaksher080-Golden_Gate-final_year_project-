import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

// Register http

  void register({
    required String firstname,
    // required String secondname,
    required String email,
    required String password,
    required String confirmpassword,
  }) async {
    emit(RegisterLoadingState());
    Response response = await http
        .post(Uri.parse("https://learning-gate.onrender.com/sigup"), headers: {
      'lang': "en"
    }, body: {
      'firstname': firstname,
      // 'secondname' : secondname,
      'email': email,
      'password': password,
      'confirmpassword': confirmpassword,
    });
    var responseBody = jsonDecode(response.body);
    if (responseBody["data"] == null) {
      print(responseBody);
      // faild
      emit(RegisterFaildState(message: responseBody['ERROR...']));
    } else {
      //emit success
      emit(SuccessToRegisterState());
    }
  }
}
