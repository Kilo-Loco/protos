import 'package:flutter/material.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/models/User.dart';

class ProfileState {
  final User user;
  final bool isCurrentUser;
  final String avatarPath;
  final String userDescription;
  final bool avatarIsChanging;
  final bool pickerSourceActionSheetVisible;

  String get username => user.username;
  String get email => user.email;

  final FormSubmissionStatus formStatus;

  ProfileState({
    @required User user,
    @required bool isCurrentUser,
    String avatarPath,
    String userDescription,
    bool avatarIsChanging = false,
    bool pickerSourceActionSheetVisible = false,
    this.formStatus = const InitialFormStatus(),
  })  : this.user = user,
        this.isCurrentUser = isCurrentUser,
        this.avatarPath = avatarPath,
        this.avatarIsChanging = avatarIsChanging,
        this.pickerSourceActionSheetVisible = pickerSourceActionSheetVisible,
        this.userDescription = userDescription ?? user.description ?? '';

  ProfileState copyWith({
    User user,
    String avatarPath,
    String description,
    bool avatarIsChanging,
    bool pickerSourceActionSheetVisible,
    FormSubmissionStatus formStatus,
  }) {
    return ProfileState(
      user: user ?? this.user,
      isCurrentUser: this.isCurrentUser,
      avatarPath: avatarPath ?? this.avatarPath,
      userDescription: description ?? this.userDescription,
      avatarIsChanging: avatarIsChanging ?? this.avatarIsChanging,
      pickerSourceActionSheetVisible:
          pickerSourceActionSheetVisible ?? this.pickerSourceActionSheetVisible,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
