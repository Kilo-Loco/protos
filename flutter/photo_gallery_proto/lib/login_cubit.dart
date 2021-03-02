import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_repository.dart';

enum LoginState { loginInitial, attemptingLogin, loginSuccess, loginFailure }

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository authRepo;

  LoginCubit({this.authRepo}) : super(LoginState.loginInitial);

  void login({String username, String password}) async {
    try {
      await authRepo.login(username, password);
      emit(LoginState.loginSuccess);
    } on Exception {
      emit(LoginState.loginFailure);
    }
  }
}
