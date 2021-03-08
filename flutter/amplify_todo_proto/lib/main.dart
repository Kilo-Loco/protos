import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_todo_proto/app_navigator.dart';
import 'package:amplify_todo_proto/auth_cubit.dart';
import 'package:amplify_todo_proto/auth_repository.dart';
import 'package:amplify_todo_proto/list_todos_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'amplifyconfiguration.dart';
import 'loading_view.dart';
import 'models/ModelProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _amplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify().then((value) => _observeHub());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AuthCubit(authRepo: AuthRepository())..attemptAutoSignIn(),
          ),
          BlocProvider(
            create: (context) => ListTodosCubit(),
          )
        ],
        child: _amplifyConfigured ? AppNavigator() : LoadingView(),
      ),
    );
  }

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugins([
        AmplifyDataStore(modelProvider: ModelProvider.instance),
        AmplifyAPI(),
        AmplifyAuthCognito(),
      ]);
      await Amplify.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }

  void _observeHub() {
    Amplify.Hub.listen([HubChannel.DataStore], (event) {
      final eventName = (event as HubEvent).eventName;
      print('HUB: $eventName');
    });
  }
}
