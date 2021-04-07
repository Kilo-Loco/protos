import 'package:image_picker/image_picker.dart';

abstract class NewPostEvent {}

class PickImageRequest extends NewPostEvent {}

class OpenImagePicker extends NewPostEvent {
  final ImageSource imageSource;

  OpenImagePicker({this.imageSource});
}

class ProvideImagePath extends NewPostEvent {
  final String imagePath;

  ProvideImagePath({this.imagePath});
}

class CaptionDidChange extends NewPostEvent {
  final String caption;

  CaptionDidChange({this.caption});
}

class CreatePost extends NewPostEvent {}
