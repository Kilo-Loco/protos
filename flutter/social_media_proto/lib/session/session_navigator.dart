import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/session/profile/profile_view.dart';
import 'package:social_media_proto/session/session_cubit.dart';
import 'package:social_media_proto/session/session_state.dart';

class SessionNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(builder: (context, state) {
      return state is Authenticated
          ? Navigator(
              pages: [MaterialPage(child: ProfileView())],
              onPopPage: (route, result) => route.didPop(result),
            )
          : null;
    });
  }
}
