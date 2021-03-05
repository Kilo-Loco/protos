import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_todo_proto/app_navigator.dart';
import 'package:amplify_todo_proto/auth_cubit.dart';
import 'package:amplify_todo_proto/auth_repository.dart';
import 'package:amplify_todo_proto/list_todos_cubit.dart';
import 'package:amplify_todo_proto/todos_view.dart';
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
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    final authRepo = AuthRepository();
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit(authRepo: authRepo),
          ),
          BlocProvider(
            create: (context) => ListTodosCubit(authRepo: authRepo),
          )
        ],
        child: _amplifyConfigured ? AppNavigator() : LoadingView(),
      ),
    );
  }

  void _configureAmplify() async {
    Amplify.addPlugin(AmplifyDataStore(modelProvider: ModelProvider.instance));

    try {
      await Amplify.configure(amplifyconfig);
      setState(() {
        _amplifyConfigured = true;
      });
    } catch (e) {
      print(e);
    }
  }
}
