import 'package:amplify_todo_proto/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthState {}

class UnknownAuthState extends AuthState {}

class Unauthenticated extends AuthState {}

class Authenticated extends AuthState {
  final String userId;

  Authenticated({this.userId});
}

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepo;

  AuthCubit({this.authRepo}) : super(UnknownAuthState());

  void signIn() async {
    try {
      final userId = await authRepo.webSignIn();
      if (userId != null && userId.isNotEmpty) {
        emit(Authenticated(userId: userId));
      } else {
        emit(Unauthenticated());
      }
    } on Exception {
      emit(Unauthenticated());
    }
  }

  void attemptAutoSignIn() async {
    try {
      final userId = await authRepo.getAuthSession();
      if (userId != null && userId.isNotEmpty) {
        emit(Authenticated(userId: userId));
      } else {
        emit(Unauthenticated());
      }
    } on Exception {
      emit(Unauthenticated());
    }
  }

  void signOut() {
    try {
      authRepo.signOut();
    } catch (e) {
      print(e);
    }
    emit(Unauthenticated());
  }
}
