import 'dart:async';
import 'package:amplify_flutter/amplify.dart';
import 'models/User.dart';

class AuthRepository {
  Future<String> fetchUserIdFromAttributes() async {
    final attributes = await Amplify.Auth.fetchUserAttributes();
    final subAttribute =
        attributes.firstWhere((element) => element.userAttributeKey == 'sub');
    final userId = subAttribute.value;
    print(userId);
    final user = User(id: userId, email: "fake@email.com");
    await Amplify.DataStore.save(user);
    return userId;
  }

  Future<String> webSignIn() async {
    try {
      final result = await Amplify.Auth.signInWithWebUI();
      if (result.isSignedIn) {
        return await fetchUserIdFromAttributes();
      } else {
        throw Exception('Could not sign in');
      }
    } catch (e) {
      throw e;
    }
  }

  Stream<String> observeAuthStatus() {
    return Amplify.Hub.availableStreams[HubChannel.Auth]
        .asBroadcastStream()
        .map((event) => (event as HubEvent).eventName);
  }

  Future<String> getAuthSession() async {
    try {
      return await fetchUserIdFromAttributes();
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
