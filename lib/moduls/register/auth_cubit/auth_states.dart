abstract class AuthState {}

class AuthInitialState extends AuthState {}

class RegisterLoadingState extends AuthState {}

class RegisterSuccessState extends AuthState {}

class FailedToRegisterState extends AuthState {
  String msg;

  FailedToRegisterState({required this.msg});
}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class FailedToLoginState extends AuthState {
  final String msg;

  FailedToLoginState({required this.msg});
}
