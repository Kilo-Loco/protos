import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_proto/app_navigator.dart';
import 'package:photo_gallery_proto/auth_repository.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (context) => AuthRepository(),
        child: AppNavigator(),
      ),
    );
  }

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugins([AmplifyAuthCognito()]);
      Amplify.configure(amplifyconfig);
    } catch (e) {
      print(e);
    }
  }
}
