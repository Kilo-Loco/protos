import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/session_cubit.dart';

class SessionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('session view'),
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
