import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_todo_proto/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Sign In'),
          onPressed: () => BlocProvider.of<AuthCubit>(context).signIn(),
        ),
      ),
    );
  }
}
