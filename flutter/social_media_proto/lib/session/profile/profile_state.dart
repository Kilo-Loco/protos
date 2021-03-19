import 'package:flutter/material.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/models/User.dart';

class ProfileState {
  final String avatarPath;
  final String userDescription;

  final User _user;
  String get username => _user.username;
  String get email => _user.email;

  final FormSubmissionStatus formStatus;

  ProfileState({
    @required User user,
    String avatarPath,
    String userDescription,
    this.formStatus = const InitialFormStatus(),
  })  : this._user = user,
        this.avatarPath = avatarPath,
        this.userDescription = userDescription ?? user.description;

  ProfileState copyWith({
    String avatarPath,
    String description,
    FormSubmissionStatus formStatus,
  }) {
    return ProfileState(
      user: this._user,
      avatarPath: avatarPath ?? this.avatarPath,
      userDescription: description ?? this.userDescription,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
