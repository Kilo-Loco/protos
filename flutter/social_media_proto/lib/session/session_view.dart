import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/session/session_cubit.dart';

class SessionView extends StatelessWidget {
  final String username;

  SessionView({Key key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HELLO $username'),
            TextButton(
              child: Text('Sign out'),
              onPressed: () => context.read<SessionCubit>().signOut(),
            )
          ],
        ),
      ),
    );
  }
}
