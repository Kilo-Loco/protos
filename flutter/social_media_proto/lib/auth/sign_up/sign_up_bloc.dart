import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/sign_up/sign_up_event.dart';
import 'package:social_media_proto/auth/sign_up/sign_up_state.dart';
import '../auth_cubit.dart';
import '../auth_repository.dart';
import '../form_submission_status.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository authRepo;
  final AuthCubit authCubit;

  SignUpBloc({this.authRepo, this.authCubit}) : super(SignUpState());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is SignUpUsernameChanged) {
      yield state.copyWith(username: event.username);
    } else if (event is SignUpEmailChanged) {
      yield state.copyWith(email: event.email);
    } else if (event is SignUpPasswordChanged) {
      yield state.copyWith(password: event.password);
    } else if (event is SignUpSubmitted) {
      yield state.copyWith(formStatus: FormSubmitting());
      try {
        await authRepo.signUp(
          username: state.username,
          email: state.email,
          password: state.password,
        );

        yield state.copyWith(formStatus: SubmissionSuccess());
        authCubit.showConfirmSignUp(
          state.username,
          state.email,
          state.password,
        );
      } catch (e) {
        print(e);
        yield state.copyWith(formStatus: SubmissionFailed(exception: e));
      }
    }
  }
}
