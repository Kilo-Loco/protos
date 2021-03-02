import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_proto/auth_repository.dart';

enum SignUpState { initial, attemptingSignUp, signUpSuccess, signUpFailure }

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepository authRepo;

  SignUpCubit({this.authRepo}) : super(SignUpState.initial);

  Future<void> signUp({String username, String email, String password}) async {
    emit(SignUpState.attemptingSignUp);

    try {
      await authRepo.signUp(
        username: username,
        email: email,
        password: password,
      );
      emit(SignUpState.signUpSuccess);
    } on Exception {
      emit(SignUpState.signUpFailure);
    }
  }
}
