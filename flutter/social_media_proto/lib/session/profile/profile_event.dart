import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

abstract class ProfileEvent {}

class ChangeAvatarRequest extends ProfileEvent {}

class OpenImagePicker extends ProfileEvent {
  final ImageSource source;

  OpenImagePicker({@required this.source});
}

class ProvideAvatarPath extends ProfileEvent {
  final String avatarPath;

  ProvideAvatarPath({this.avatarPath});
}

class ProfileDescriptionChanged extends ProfileEvent {
  final String description;

  ProfileDescriptionChanged({this.description});
}

class SaveProfileChanges extends ProfileEvent {}
