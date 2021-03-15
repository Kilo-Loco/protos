abstract class AuthState {}

class LoginState extends AuthState {}

class SignUpState extends AuthState {}

class ConfirmSignUpState extends AuthState {
  final String username;

  ConfirmSignUpState({this.username});
}
