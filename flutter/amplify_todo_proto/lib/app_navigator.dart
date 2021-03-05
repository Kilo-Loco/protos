import 'package:amplify_todo_proto/auth_cubit.dart';
import 'package:amplify_todo_proto/auth_view.dart';
import 'package:amplify_todo_proto/loading_view.dart';
import 'package:amplify_todo_proto/todos_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: ((context, state) {
      return Navigator(
        pages: [
          if (state == AuthState.unknown) MaterialPage(child: LoadingView()),
          if (state == AuthState.unauthenticated)
            MaterialPage(child: AuthView()),
          if (state == AuthState.authenticated) MaterialPage(child: TodosView())
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
    }));
  }
}
