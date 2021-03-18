import 'package:flutter/material.dart';
import 'package:social_media_proto/models/User.dart';

class ProfileState {
  final String avatarPath;
  final String description;

  final User _user;

  ProfileState({@required User user, String avatarPath, String description})
      : this._user = user,
        this.avatarPath = avatarPath,
        this.description = description ?? 'user.description' {
    if (avatarPath == null) {
      //get avatar path from avatar key
    }
  }

  ProfileState copyWith({
    String avatarPath,
    String description,
  }) {
    return ProfileState(
      user: this._user,
      avatarPath: avatarPath ?? this.avatarPath,
      description: description ?? this.description,
    );
  }
}
