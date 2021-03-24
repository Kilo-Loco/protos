import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/session/profile/profile_event.dart';
import 'package:social_media_proto/session/profile/profile_state.dart';
import 'package:social_media_proto/session/session_cubit.dart';
import 'package:social_media_proto/session/session_state.dart';
import 'package:social_media_proto/session/storage_repository.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final SessionCubit sessionCubit;
  final DataRepository dataRepo;
  final StorageRepository storageRepo;

  final _picker = ImagePicker();

  ProfileBloc({
    @required this.sessionCubit,
    @required this.dataRepo,
    @required this.storageRepo,
  }) : super(ProfileState(user: (sessionCubit.state as Authenticated).user)) {
    _getAvatarPath();
  }

  void _getAvatarPath() async {
    final avatarKey = state.user.avatarKey;
    if (avatarKey != null) {
      final avatarPath = await storageRepo.getUrlForFile(avatarKey);
      add(ProvideAvatarPath(avatarPath: avatarPath));
    } else {
      print('nope');
    }
  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is ChangeAvatarRequest) {
      yield state.copyWith(pickerSourceActionSheetVisible: true);
    } else if (event is OpenImagePicker) {
      yield state.copyWith(
        pickerSourceActionSheetVisible: false,
        avatarIsChanging: true,
      );
      // trigger photo picker to open
      final pickedFile = await _picker.getImage(source: event.source);
      if (pickedFile == null) return;
      final avatarKey = await storageRepo.uploadFile(File(pickedFile.path));
      final updatedUser = state.user.copyWith(avatarKey: avatarKey);
      final results = await Future.wait([
        dataRepo.updateUser(updatedUser),
        storageRepo.getUrlForFile(avatarKey),
      ]);
      final avatarPath = results.last as String;
      yield state.copyWith(
        user: updatedUser,
        avatarPath: avatarPath,
        avatarIsChanging: false,
      );
    } else if (event is ProvideAvatarPath) {
      yield state.copyWith(avatarPath: event.avatarPath);
    } else if (event is ProfileDescriptionChanged) {
      yield state.copyWith(description: event.description);
    } else if (event is SaveProfileChanges) {
      yield state.copyWith(formStatus: FormSubmitting());

      final updatedUser =
          state.user.copyWith(description: state.userDescription);
      await dataRepo.updateUser(updatedUser);

      yield state.copyWith(user: updatedUser, formStatus: SubmissionSuccess());
    }
  }
}
