import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_credentials.dart';
import 'package:social_media_proto/auth/auth_state.dart';
import 'package:social_media_proto/session_cubit.dart';

class AuthCubit extends Cubit<AuthState> {
  final SessionCubit sessionCubit;
  AuthCredentials credentials;

  AuthCubit({@required this.sessionCubit}) : super(LoginState());

  void showLogin() => emit(LoginState());
  void showSignUp() => emit(SignUpState());
  void showConfirmSignUp(
    String username,
    String email,
    String password,
  ) {
    credentials = AuthCredentials(
      username: username,
      email: email,
      password: password,
    );
    emit(ConfirmSignUpState());
  }

  void launchSession(AuthCredentials credentials) =>
      sessionCubit.showSession(credentials);
}
