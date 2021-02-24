import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  final Function(String) didSignIn;

  AuthView({this.didSignIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Sign In'),
          onPressed: _webSignIn,
        ),
      ),
    );
  }

  void _webSignIn() async {
    try {
      final result = await Amplify.Auth.signInWithWebUI();
      final session = await Amplify.Auth.fetchAuthSession(
          options: CognitoSessionOptions(getAWSCredentials: true));
      print(session);
    } catch (e) {
      print(e);
    }
  }
}
