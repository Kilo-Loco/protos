import 'package:amplify_and_flutter_proto/auth/auth_credentials.dart';

class SignUpCredentials extends AuthCredentials {
  SignUpCredentials({this.username, String email, String password})
      : super(email: email, password: password);

  final String username;

  @override
  String toString() {
    return "Username: $username\nEmail: $email\nPassword: $password";
  }
}
