abstract class AuthState {}

class AuthInitialState extends AuthState {}

class RegisterLoadingState extends AuthState {}

class RegisterFaildState extends AuthState {
  String message;
///m
  RegisterFaildState({required this.message});
}

class SuccessToRegisterState extends AuthState {}
