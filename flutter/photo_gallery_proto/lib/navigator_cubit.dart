import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_proto/auth_repository.dart';
import 'package:photo_gallery_proto/navigator_state.dart';

class NavigatorCubit extends Cubit<NavigatorState> {
  final AuthRepository authRepository;

  NavigatorCubit({this.authRepository}) : super(Login());

  void showLogin() => emit(Login());
  void showSignUp() => emit(SignUp());

  void showSession() => emit(Session());
}
