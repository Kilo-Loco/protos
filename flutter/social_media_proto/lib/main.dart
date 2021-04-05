import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/amplifyconfiguration.dart';
import 'package:social_media_proto/app_navigator.dart';
import 'package:social_media_proto/auth/auth_repository.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/loading_view.dart';
import 'package:social_media_proto/models/ModelProvider.dart';
import 'package:social_media_proto/session/session_cubit.dart';
import 'package:social_media_proto/session/storage_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAmplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: _isAmplifyConfigured
            ? MultiRepositoryProvider(
                providers: [
                    RepositoryProvider(create: (context) => AuthRepository()),
                    RepositoryProvider(create: (context) => DataRepository()),
                    RepositoryProvider(
                        create: (context) => StorageRepository()),
                  ],
                child: BlocProvider(
                  create: (context) => SessionCubit(
                    authRepo: context.read<AuthRepository>(),
                    dataRepo: context.read<DataRepository>(),
                  ),
                  child: AppNavigator(),
                ))
            : LoadingView());
  }

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugins([
        AmplifyAuthCognito(),
        AmplifyDataStore(modelProvider: ModelProvider.instance),
        AmplifyAPI(),
        AmplifyStorageS3(),
      ]);

      await Amplify.configure(amplifyconfig);

      setState(() => _isAmplifyConfigured = true);
    } on AmplifyException catch (e) {
      print('message from amplify exception: $e');
      setState(() => _isAmplifyConfigured = true);
    } catch (e) {
      print('something else $e');
    }
  }
}
