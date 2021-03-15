import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_cubit.dart';
import 'package:social_media_proto/auth/auth_navigator.dart';
import 'package:social_media_proto/session_view.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(
          child: BlocProvider(
            create: (context) => AuthCubit(),
            child: AuthNavigator(),
          ),
        ),
        MaterialPage(child: SessionView())
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
