import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_cubit.dart';
import 'package:social_media_proto/auth/auth_navigator.dart';
import 'package:social_media_proto/loading_view.dart';
import 'package:social_media_proto/session/profile/profile_view.dart';
import 'package:social_media_proto/session/session_cubit.dart';
import 'package:social_media_proto/session/session_state.dart';
import 'package:social_media_proto/session/session_view.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(builder: (context, state) {
      return Navigator(
        pages: [
          if (state is Unauthenticated)
            MaterialPage(
              child: BlocProvider(
                create: (context) =>
                    AuthCubit(sessionCubit: context.read<SessionCubit>()),
                child: AuthNavigator(),
              ),
            ),
          if (state is Authenticated) MaterialPage(child: ProfileView()),
          if (state is UnknownSessionState) MaterialPage(child: LoadingView())
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
    });
  }
}
