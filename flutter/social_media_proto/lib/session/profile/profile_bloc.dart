import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/models/User.dart';
import 'package:social_media_proto/session/profile/profile_event.dart';
import 'package:social_media_proto/session/profile/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({User user}) : super(ProfileState(user: user));

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
      // await dataRepo.updateCurrentUser(description: state.description)
    }
  }
}
