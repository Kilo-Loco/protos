import 'dart:async';

import 'package:amplify_flutter/amplify.dart';

class AuthRepository {
  StreamSubscription observeAuth() {
    return Amplify.Hub.listen([HubChannel.Auth], (event) {
      print(event);
    });
  }
}
