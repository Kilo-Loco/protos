import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(LoginState());

  void showLogin() => emit(LoginState());
  void showSignUp() => emit(SignUpState());
  void showConfirmSignUp(String username) =>
      emit(ConfirmSignUpState(username: username));
}
