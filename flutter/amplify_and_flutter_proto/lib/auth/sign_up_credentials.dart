import 'package:amplify_and_flutter_proto/auth/auth_credentials.dart';

class SignUpCredentials extends AuthCredentials {
  SignUpCredentials({this.email, String username, String password})
      : super(username: username, password: password);

  final String email;

  @override
  String toString() {
    return "Username: $username\nEmail: $email\nPassword: $password";
  }
}
