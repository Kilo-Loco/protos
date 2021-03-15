import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth_repository.dart';
import '../form_submission_status.dart';
import 'confirmation_event.dart';
import 'confirmation_state.dart';

class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  final AuthRepository authRepo;

  ConfirmationBloc({this.authRepo}) : super(ConfirmationState());

  @override
  Stream<ConfirmationState> mapEventToState(ConfirmationEvent event) async* {
    if (event is ConfirmationCodeChanged) {
      yield state.copyWith(code: event.code);
    } else if (event is ConfirmationSubmitted) {
      yield state.copyWith(formStatus: FormSubmitting());
      try {
        await authRepo.confirmSignUp(
            username: '', confirmationCode: state.code);
        yield state.copyWith(formStatus: SubmissionSuccess());
      } catch (e) {
        yield state.copyWith(formStatus: SubmissionFailed(exception: e));
      }
    }
  }
}
