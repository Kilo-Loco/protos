import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/models/User.dart';
import 'package:social_media_proto/session/new_post/new_post_event.dart';
import 'package:social_media_proto/session/new_post/new_post_state.dart';
import 'package:social_media_proto/session/storage_repository.dart';

class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  final DataRepository dataRepo;
  final StorageRepository storageRepo;
  final User currentUser;
  final _picker = ImagePicker();

  NewPostBloc({
    @required this.dataRepo,
    @required this.storageRepo,
    @required this.currentUser,
  }) : super(NewPostState());

  @override
  Stream<NewPostState> mapEventToState(NewPostEvent event) async* {
    if (event is PickImageRequest) {
      print('yep');
      yield state.copyWith(isImageSourceActionSheetVisible: true);
    } else if (event is OpenImagePicker) {
      yield state.copyWith(isImageSourceActionSheetVisible: false);

      final pickedImage = await _picker.getImage(source: event.imageSource);
      if (pickedImage == null) return;
      yield state.copyWith(avatarPath: pickedImage.path);
    } else if (event is ProvideImagePath) {
      yield state.copyWith(avatarPath: event.imagePath);
    } else if (event is CaptionDidChange) {
      print(event.caption);
      yield state.copyWith(caption: event.caption);
    } else if (event is CreatePost) {
      yield state.copyWith(formStatus: FormSubmitting());
      try {
        final imageKey = await storageRepo.uploadFile(File(state.avatarPath));
        final post =
            await dataRepo.createPost(currentUser, imageKey, state.caption);
        yield state.copyWith(formStatus: SubmissionSuccess());
        print('successfully submitted $post');
      } catch (e) {
        print(e);
        yield state.copyWith(formStatus: SubmissionFailed(exception: e));
      }
    }
  }
}
