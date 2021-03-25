import 'package:amplify_api/amplify_api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_credentials.dart';
import 'package:social_media_proto/auth/auth_repository.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/models/User.dart';
import 'package:social_media_proto/session/session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  final AuthRepository authRepo;
  final DataRepository dataRepo;

  Stream<User> currentUserStream;
  User get currentUser => (state as Authenticated).user;
  set currentUser(User updatedUser) =>
      (state as Authenticated).user = updatedUser;

  User get selectedUser => (state as Authenticated).selectedUser;
  set selectedUser(User selectedUser) =>
      (state as Authenticated).selectedUser = selectedUser;

  bool get isCurrentUserSelected =>
      selectedUser == null || currentUser.id == selectedUser.id;

  SessionCubit({
    @required this.authRepo,
    @required this.dataRepo,
  }) : super(UnknownSessionState()) {
    attemptAutoLogin();
  }

  void _observeUserChanges(User user) {
    currentUserStream = dataRepo.currenUserStream(user.id);
    currentUserStream.listen((user) {
      currentUser = user;
    });
  }

  void attemptAutoLogin() async {
    try {
      final userId = await authRepo.attemptAutoLogin();
      if (userId == null) {
        throw Exception('Not signed in');
      }
      User user = await dataRepo.getUserById(userId);

      if (user == null) {
        user = await dataRepo.createUser(
          userId: userId,
          username: 'User-${UUID()}',
        );
      }

      _observeUserChanges(user);
      emit(Authenticated(user: user));
    } on Exception {
      print('emitting unauthenticated');
      emit(Unauthenticated());
    }
  }

  void showAuth() => emit(Unauthenticated());
  void showSession(AuthCredentials credentials) async {
    try {
      User user = await dataRepo.getUserById(credentials.userId);

      if (user == null) {
        user = await dataRepo.createUser(
          userId: credentials.userId,
          username: credentials.username,
          email: credentials.email,
        );
      }

      _observeUserChanges(user);
      emit(Authenticated(user: user));
    } on Exception {
      emit(Unauthenticated());
    }
  }

  void signOut() {
    authRepo.signOut();
    emit(Unauthenticated());
  }
}
