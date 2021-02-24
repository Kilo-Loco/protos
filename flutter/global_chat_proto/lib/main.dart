import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:global_chat_proto/amplifyconfiguration.dart';
import 'package:global_chat_proto/auth_view.dart';
import 'package:global_chat_proto/models/ModelProvider.dart';

import 'messages_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _email;

  @override
  void initState() {
    super.initState();
    _configureAmplify().then((_) => _attemptAutoLogin());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Navigator(
      pages: [
        MaterialPage(
            child:
                AuthView(didSignIn: (email) => setState(() => _email = email))),
        if (_email != null) MaterialPage(child: MessagesView(email: _email))
      ],
      onPopPage: (route, result) => route.didPop(result),
    ));
  }

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugins([
        AmplifyAuthCognito(),
        AmplifyDataStore(modelProvider: ModelProvider.instance),
        AmplifyAPI()
      ]);

      await Amplify.configure(amplifyconfig);
      print('configured');
    } catch (e) {
      print(e);
    }
  }

  void _attemptAutoLogin() async {
    try {
      final attributes = await Amplify.Auth.fetchUserAttributes();
      final email = attributes
          .firstWhere((element) => element.userAttributeKey == 'email')
          .value;
      setState(() => _email = email);
    } catch (e) {
      print(e);
    }
  }
}
