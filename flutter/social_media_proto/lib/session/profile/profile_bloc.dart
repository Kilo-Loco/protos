import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/models/User.dart';
import 'package:social_media_proto/session/profile/profile_event.dart';
import 'package:social_media_proto/session/profile/profile_state.dart';
import 'package:social_media_proto/session/session_cubit.dart';
import 'package:social_media_proto/session/session_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({User user}) : super(ProfileState(user: user));

  factory ProfileBloc.fromSession(SessionCubit sessionCubit) {
    final state = sessionCubit.state;
    return state is Authenticated ? ProfileBloc(user: state.user) : null;
  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is ChangeAvatar) {
      // trigger photo picker to open
      // final file = async photopicker.pick
      // final avatarKey = await storageRepo.upload(file)
      // await dataRepo.updateCurrentUser(avatarKey: avatarKey)
      // final avatarPath = await storageRepo.getPathForFile(avatarKey)
      // yield state.copyWith(avatarPath: avatarPath)
    } else if (event is ProfileDescriptionChanged) {
      yield state.copyWith(description: event.description);
    } else if (event is SaveProfileChanges) {
      yield state.copyWith(formStatus: FormSubmitting());

      await Future.delayed(Duration(seconds: 2));
      yield state.copyWith(formStatus: SubmissionSuccess());
      // await dataRepo.updateCurrentUser(description: state.description)
    }
  }
}
