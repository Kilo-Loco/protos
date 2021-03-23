import 'package:flutter/material.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/models/User.dart';

class ProfileState {
  final String avatarPath;
  final String userDescription;
  final bool avatarIsChanging;
  final bool pickerSourceActionSheetVisible;

  final User user;
  String get username => user.username;
  String get email => user.email;

  final FormSubmissionStatus formStatus;

  ProfileState({
    @required User user,
    String avatarPath,
    String userDescription,
    bool avatarIsChanging = false,
    bool pickerSourceActionSheetVisible = false,
    this.formStatus = const InitialFormStatus(),
  })  : this.user = user,
        this.avatarPath = avatarPath,
        this.avatarIsChanging = avatarIsChanging,
        this.pickerSourceActionSheetVisible = pickerSourceActionSheetVisible,
        this.userDescription = userDescription ?? user.description;

  ProfileState copyWith({
    String avatarPath,
    String description,
    bool avatarIsChanging,
    bool pickerSourceActionSheetVisible,
    FormSubmissionStatus formStatus,
  }) {
    return ProfileState(
      user: this.user,
      avatarPath: avatarPath ?? this.avatarPath,
      userDescription: description ?? this.userDescription,
      avatarIsChanging: avatarIsChanging ?? this.avatarIsChanging,
      pickerSourceActionSheetVisible:
          pickerSourceActionSheetVisible ?? this.pickerSourceActionSheetVisible,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
