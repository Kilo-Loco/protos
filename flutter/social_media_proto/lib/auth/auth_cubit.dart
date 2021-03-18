import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_credentials.dart';
import 'package:social_media_proto/session/session_cubit.dart';

enum AuthState { login, signUp, confirmSignUp }

class AuthCubit extends Cubit<AuthState> {
  final SessionCubit sessionCubit;
  AuthCredentials credentials;

  AuthCubit({@required this.sessionCubit}) : super(AuthState.login);

  void showLogin() => emit(AuthState.login);
  void showSignUp() => emit(AuthState.signUp);
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
    emit(AuthState.confirmSignUp);
  }

  void launchSession(AuthCredentials credentials) =>
      sessionCubit.showSession(credentials);
}
