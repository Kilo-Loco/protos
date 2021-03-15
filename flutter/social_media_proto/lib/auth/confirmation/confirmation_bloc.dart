import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth_cubit.dart';
import '../auth_repository.dart';
import '../form_submission_status.dart';
import 'confirmation_event.dart';
import 'confirmation_state.dart';

class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  final AuthRepository authRepo;
  final AuthCubit authCubit;

  ConfirmationBloc({this.authRepo, this.authCubit})
      : super(ConfirmationState());

  @override
  Stream<ConfirmationState> mapEventToState(ConfirmationEvent event) async* {
    if (event is ConfirmationCodeChanged) {
      yield state.copyWith(code: event.code);
    } else if (event is ConfirmationSubmitted) {
      yield state.copyWith(formStatus: FormSubmitting());
      try {
        final credentials = authCubit.credentials;
        if (credentials != null) {
          await authRepo.confirmSignUp(
            username: credentials.username,
            confirmationCode: state.code,
          );
          yield state.copyWith(formStatus: SubmissionSuccess());
          final userId = await authRepo.login(
            username: credentials.username,
            password: credentials.password,
          );
          credentials.userId = userId;
          authCubit.launchSession(credentials);
        } else {
          throw Exception('Missing sign up credentials.');
        }
      } catch (e) {
        yield state.copyWith(formStatus: SubmissionFailed(exception: e));
      }
    }
  }
}
