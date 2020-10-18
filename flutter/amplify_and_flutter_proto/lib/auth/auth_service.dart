import 'dart:async';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'auth_credentials.dart';
import 'auth_flow_status.dart';
import 'sign_up_credentials.dart';

class AuthState {
  AuthState({@required this.authFlowStatus, this.user});

  final AuthFlowStatus authFlowStatus;
  final AuthUser user;
}

class AuthService {
  AuthCredentials _credentials;
  final authStateController = StreamController<AuthState>();

  void getCurrentUser() async {
    try {
      final user = await Amplify.Auth.getCurrentUser();
      final state =
          AuthState(authFlowStatus: AuthFlowStatus.session, user: user);

      authStateController.add(state);

      _credentials = null;
    } catch (_) {
      print('user not logged in');
      showLogin();
    }
  }

  void showSignUp() {
    final state = AuthState(authFlowStatus: AuthFlowStatus.signUp);
    authStateController.add(state);
  }

  void showLogin() {
    final state = AuthState(authFlowStatus: AuthFlowStatus.login);
    authStateController.add(state);
  }

  void signUpWithCredentials(SignUpCredentials credentials) async {
    try {
      final Map<String, dynamic> userAttributes = {'email': credentials.email};

      final result = await Amplify.Auth.signUp(
          username: credentials.username,
          password: credentials.password,
          options: CognitoSignUpOptions(userAttributes: userAttributes));

      if (result.isSignUpComplete) {
        loginWithCredentials(credentials);
      } else {
        this._credentials = credentials;

        final state = AuthState(authFlowStatus: AuthFlowStatus.verification);
        authStateController.add(state);
      }
    } on AuthError catch (e) {
      print('Sign up error - ${e.cause}');
    }
  }

  void verifyConfirmation(String code) async {
    if (this._credentials == null) return;

    try {
      final result = await Amplify.Auth.confirmSignUp(
          username: this._credentials.username, confirmationCode: code);

      if (result.isSignUpComplete) {
        loginWithCredentials(_credentials);
      } else {
        // Follow more sign up steps
      }
    } catch (e) {
      print(e);
    }
  }

  void loginWithCredentials(AuthCredentials credentials) async {
    try {
      final result = await Amplify.Auth.signIn(
          username: credentials.username, password: credentials.password);

      if (result.isSignedIn) {
        getCurrentUser();
      } else {
        print('user is not signed in');
      }
    } on AuthError catch (e) {
      print('could not log in - ${e.cause}');
    }
  }

  void logOut() async {
    try {
      final options = CognitoSignOutOptions(globalSignOut: true);
      await Amplify.Auth.signOut(options: options);

      final state = AuthState(authFlowStatus: AuthFlowStatus.login);
      authStateController.add(state);

      print('signed out');
    } catch (e) {
      print('Log out error - $e');
    }
  }
}
