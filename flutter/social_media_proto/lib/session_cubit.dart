import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_credentials.dart';
import 'package:social_media_proto/auth/auth_repository.dart';
import 'package:social_media_proto/session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  final AuthRepository authRepo;

  SessionCubit({this.authRepo}) : super(UnknownSessionState()) {
    attemptAutoLogin();
  }

  void attemptAutoLogin() async {
    try {
      final userId = await authRepo.attemptAutoLogin();
      // final user = dataRepo.getUser(userId);
      final user = userId;
      emit(Authenticated(user: user));
    } on Exception {
      print('emitting unauthenticated');
      emit(Unauthenticated());
    }
  }

  void showAuth() => emit(Unauthenticated());
  void showSession(AuthCredentials credentials) {
    try {
      // final user = dataRepo.getUser(userId);
      final user = credentials.username;
      emit(Authenticated(user: user));
    } on Exception {
      // final newUser = dataRepo.createUser(userId: credentials.userId, username: credentials.username, email: credentials.email);
      // emit(Authenticated(user: newUser));
    }
  }

  void signOut() {
    authRepo.signOut();
    emit(Unauthenticated());
  }
}
