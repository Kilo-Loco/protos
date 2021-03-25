import '../models/User.dart';

abstract class SessionState {}

class UnknownSessionState extends SessionState {}

class Unauthenticated extends SessionState {}

class Authenticated extends SessionState {
  User user;

  User selectedUser;

  Authenticated({this.user});
}
