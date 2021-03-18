abstract class ProfileEvent {}

class ChangeAvatar extends ProfileEvent {}

class ProfileDescriptionChanged extends ProfileEvent {
  final String description;

  ProfileDescriptionChanged({this.description});
}

class SaveProfileChanges extends ProfileEvent {}
