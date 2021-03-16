import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';

class AuthRepository {
  Future<String> _getUserIdFromAttributes() async {
    final attributes = await Amplify.Auth.fetchUserAttributes();
    final userId = attributes
        .firstWhere((element) => element.userAttributeKey == 'sub')
        .value;
    return userId;
  }

  Future<String> attemptAutoLogin() async {
    final session = await Amplify.Auth.fetchAuthSession();
    print(session.isSignedIn);
    if (session.isSignedIn) {
      return await _getUserIdFromAttributes();
    } else {
      return null;
    }
  }

  Future<String> login({
    String username,
    String password,
  }) async {
    try {
      final result = await Amplify.Auth.signIn(
        username: username.trim(),
        password: password.trim(),
      );

      if (result.isSignedIn) {
        return await _getUserIdFromAttributes();
      } else {
        throw Exception('Not signed in');
      }
    } catch (e) {
      throw e;
    }
  }

  Future<bool> signUp({
    String username,
    String email,
    String password,
  }) async {
    try {
      final userAttributes = {'email': email};
      final result = await Amplify.Auth.signUp(
        username: username.trim(),
        password: password.trim(),
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );
      return result.isSignUpComplete;
    } catch (e) {
      throw e;
    }
  }

  Future<bool> confirmSignUp({
    String username,
    String confirmationCode,
  }) async {
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: username.trim(),
        confirmationCode: confirmationCode.trim(),
      );
      return result.isSignUpComplete;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    await Amplify.Auth.signOut();
  }
}
