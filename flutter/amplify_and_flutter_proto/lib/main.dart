import 'package:amplify_and_flutter_proto/auth/auth_flow_status.dart';
import 'package:amplify_and_flutter_proto/auth/confirmation_page.dart';
import 'package:amplify_and_flutter_proto/auth/sign_up_credentials.dart';
import 'package:amplify_and_flutter_proto/auth/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'auth/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _authFlowStatus = AuthFlowStatus.login;
  SignUpCredentials _signUpCredentials;

  void _didProvideSignUpCredentials(SignUpCredentials credentials) {
    print(credentials.toString());

    setState(() {
      this._signUpCredentials = credentials;
    });
  }

  void _updateAuthFlowStatus(AuthFlowStatus status) {
    setState(() {
      this._authFlowStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Navigator(
        pages: [
          // Show Login Page
          if (_authFlowStatus == AuthFlowStatus.login)
            MaterialPage(
                key: LoginPage.valueKey,
                child: LoginPage(
                  shouldShowSignUp: () =>
                      _updateAuthFlowStatus(AuthFlowStatus.signUp),
                )),

          // Show Sign Up Page
          if (_authFlowStatus == AuthFlowStatus.signUp)
            MaterialPage(
                key: SignUpPage.valueKey,
                child: SignUpPage(
                  didProvideCredentials: _didProvideSignUpCredentials,
                  shouldShowLogin: () =>
                      _updateAuthFlowStatus(AuthFlowStatus.login),
                )),

          // Show Confirmation Page
          if (_authFlowStatus == AuthFlowStatus.signUp &&
              _signUpCredentials != null)
            MaterialPage(
                key: ConfirmationPage.valueKey, child: ConfirmationPage())
        ],
        onPopPage: (route, result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
