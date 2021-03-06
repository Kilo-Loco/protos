import 'dart:async';

import 'package:amplify_flutter/amplify.dart';

class AuthRepository {
  Future<bool> webSignIn() async {
    try {
      final result = await Amplify.Auth.signInWithWebUI();
      return result.isSignedIn;
    } catch (e) {
      throw e;
    }
  }

  Stream<String> observeAuthStatus() {
    return Amplify.Hub.availableStreams[HubChannel.Auth]
        .asBroadcastStream()
        .map((event) => (event as HubEvent).eventName);
  }

  Future<bool> getAuthSession() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession();
      return session.isSignedIn;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await Amplify.Auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
