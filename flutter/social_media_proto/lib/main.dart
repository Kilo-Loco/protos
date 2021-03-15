import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/app_navigator.dart';
import 'package:social_media_proto/auth/auth_repository.dart';
import 'package:social_media_proto/auth/sign_up/sign_up_view.dart';
import 'package:social_media_proto/session_cubit.dart';

import 'auth/login/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
          create: (context) => AuthRepository(),
          child: BlocProvider(
            create: (context) =>
                SessionCubit(authRepo: context.read<AuthRepository>()),
            child: AppNavigator(),
          )),
    );
  }
}
