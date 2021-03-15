import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_repository.dart';
import 'package:social_media_proto/session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  final AuthRepository authRepo;

  SessionCubit({this.authRepo}) : super(UnknownSessionState());

  void showAuth() => emit(Unauthenticated());
  void startSession(dynamic user) => emit(Authenticated(user: user));
  void signOut() {
    authRepo.signOut();
    emit(Unauthenticated());
  }
}
