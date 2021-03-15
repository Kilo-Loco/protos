import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_state.dart';
import 'package:social_media_proto/auth/confirmation/confirmation_view.dart';
import 'package:social_media_proto/auth/login/login_view.dart';
import 'package:social_media_proto/auth/sign_up/sign_up_view.dart';

import 'auth_cubit.dart';

class AuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return Navigator(
        pages: [
          if (state is LoginState) MaterialPage(child: LoginView()),
          if (state is SignUpState || state is ConfirmSignUpState) ...[
            MaterialPage(child: SignUpView()),
            if (state is ConfirmSignUpState)
              MaterialPage(child: ConfirmationView())
          ]
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
    });
  }
}
