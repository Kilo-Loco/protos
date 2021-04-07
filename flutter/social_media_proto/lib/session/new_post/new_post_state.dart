import 'package:social_media_proto/auth/form_submission_status.dart';

class NewPostState {
  final String avatarPath;
  final String caption;
  final FormSubmissionStatus formStatus;
  final bool isImageSourceActionSheetVisible;

  NewPostState(
      {this.avatarPath,
      this.caption,
      this.formStatus = const InitialFormStatus(),
      this.isImageSourceActionSheetVisible = false});

  NewPostState copyWith({
    String avatarPath,
    String caption,
    FormSubmissionStatus formStatus,
    bool isImageSourceActionSheetVisible,
  }) {
    return NewPostState(
      avatarPath: avatarPath ?? this.avatarPath,
      caption: caption ?? this.caption,
      formStatus: formStatus ?? this.formStatus,
      isImageSourceActionSheetVisible: isImageSourceActionSheetVisible ??
          this.isImageSourceActionSheetVisible,
    );
  }
}
