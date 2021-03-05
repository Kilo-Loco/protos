import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery_proto/auth_repository.dart';

enum ConfirmationState {
  initial,
  attemptingConfirm,
  confirmSuccess,
  confirmFailed
}

class ConfirmationCubit extends Cubit<ConfirmationState> {
  final AuthRepository authRepo;

  ConfirmationCubit({this.authRepo}) : super(ConfirmationState.initial);

  void confirm({String username, String confirmationCode}) async {
    emit(ConfirmationState.attemptingConfirm);

    try {
      await authRepo.confirmSignUp(
        username: username,
        confirmationCode: confirmationCode,
      );
      emit(ConfirmationState.confirmSuccess);
    } on Exception {
      emit(ConfirmationState.confirmFailed);
    }
  }
}
