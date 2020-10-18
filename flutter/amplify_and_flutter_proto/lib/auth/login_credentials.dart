import 'package:amplify_and_flutter_proto/auth/auth_credentials.dart';

class LoginCredentials extends AuthCredentials {
  LoginCredentials({String username, String password})
      : super(username: username, password: password);
}
