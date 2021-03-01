abstract class NavigatorState {}

class Login extends NavigatorState {}

class SignUp extends NavigatorState {}

class ConfirmSignUp extends NavigatorState {
  final String username;

  ConfirmSignUp({this.username});
}

class Session extends NavigatorState {}
