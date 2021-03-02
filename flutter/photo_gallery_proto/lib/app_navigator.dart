import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_proto/auth_repository.dart';
import 'package:photo_gallery_proto/navigator_cubit.dart';
import 'package:photo_gallery_proto/sign_up_view.dart';
import 'navigator_state.dart' as navState;
import 'login_view.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) {
      return NavigatorCubit(
        authRepository: context.read<AuthRepository>()..observeAuth(),
      );
    }, child: BlocBuilder<NavigatorCubit, navState.NavigatorState>(
        builder: (context, state) {
      return Navigator(
        pages: [
          if (state is navState.Login) MaterialPage(child: LoginView()),
          if (state is navState.SignUp) MaterialPage(child: SignUpView()),
          if (state is navState.ConfirmSignUp) ...[
            MaterialPage(child: SignUpView()),
            MaterialPage(child: null)
          ],
          if (state is navState.Session) MaterialPage(child: null)
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
    }));
  }
}
