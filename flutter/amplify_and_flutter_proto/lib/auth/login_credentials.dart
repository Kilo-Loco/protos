import 'package:amplify_and_flutter_proto/auth/auth_credentials.dart';

class LoginCredentials extends AuthCredentials {
  LoginCredentials({String email, String password})
      : super(email: email, password: password);
}
