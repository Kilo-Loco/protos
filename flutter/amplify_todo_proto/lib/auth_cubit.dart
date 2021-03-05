import 'package:amplify_todo_proto/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum AuthState { unknown, authenticated, unauthenticated }

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepo;

  AuthCubit({this.authRepo}) : super(AuthState.unknown);

  void signIn() async {
    try {
      final isSignedIn = await authRepo.webSignIn();
      if (isSignedIn) {
        emit(AuthState.authenticated);
      } else {
        emit(AuthState.unauthenticated);
      }
    } on Exception {
      emit(AuthState.unauthenticated);
    }
  }
}
