import 'dart:async';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';

class AuthRepository {
  StreamSubscription observeAuth() {
    return Amplify.Hub.listen([HubChannel.Auth], (event) {
      print(event);
    });
  }

  Future<void> signUp({String username, String email, String password}) async {
    try {
      final options = SignUpOptions(
        userAttributes: {'email': email},
      );
      await Amplify.Auth.signUp(
        username: username,
        password: password,
        options: options,
      );
    } catch (e) {
      throw e;
    }
  }

  Future<void> login(String username, String password) async {
    try {
      await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
    } catch (e) {
      throw e;
    }
  }
}
