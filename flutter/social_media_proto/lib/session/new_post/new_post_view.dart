import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/session/new_post/new_post_bloc.dart';
import 'package:social_media_proto/session/new_post/new_post_event.dart';
import 'package:social_media_proto/session/new_post/new_post_state.dart';
import 'package:social_media_proto/session/session_cubit.dart';
import 'package:social_media_proto/session/storage_repository.dart';

class NewPostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPostBloc(
        dataRepo: context.read<DataRepository>(),
        storageRepo: context.read<StorageRepository>(),
        currentUser: context.read<SessionCubit>().currentUser,
      ),
      child: Scaffold(
        appBar: _appBar(),
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20),
          child: _newPostPage(),
        ),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text('New Post'),
    );
  }

  Widget _newPostPage() {
    return BlocListener<NewPostBloc, NewPostState>(
      listener: (context, state) {
        if (state.isImageSourceActionSheetVisible) {
          _showPickerSourceActionSheet(context);
        }
      },
      child: Column(
        children: [
          _image(),
          _caption(),
          Spacer(),
          _createPostButton(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _image() {
    return BlocBuilder<NewPostBloc, NewPostState>(builder: (context, state) {
      return SizedBox(
        child: Center(
          child: state.avatarPath != null
              ? Image.file(File(state.avatarPath))
              : GestureDetector(
                  child: Icon(
                    Icons.photo_sharp,
                    size: 250,
                  ),
                  onTap: () =>
                      context.read<NewPostBloc>().add(PickImageRequest()),
                ),
        ),
      );
    });
  }

  Widget _caption() {
    return BlocBuilder<NewPostBloc, NewPostState>(builder: (context, state) {
      return Expanded(
        child: TextField(
          maxLines: null,
          decoration: InputDecoration.collapsed(hintText: 'Enter a caption...'),
          onChanged: (value) =>
              context.read<NewPostBloc>().add(CaptionDidChange(caption: value)),
        ),
      );
    });
  }

  Widget _createPostButton() {
    return BlocBuilder<NewPostBloc, NewPostState>(builder: (context, state) {
      return SizedBox(
        width: 150,
        child: state.formStatus is FormSubmitting
            ? Center(child: CircularProgressIndicator())
            : ElevatedButton(
                child: Text('Post'),
                onPressed: () => context.read<NewPostBloc>().add(CreatePost()),
              ),
      );
    });
  }

  void _showPickerSourceActionSheet(BuildContext context) {
    Function(ImageSource) selectImageSource = (imageSource) {
      context
          .read<NewPostBloc>()
          .add(OpenImagePicker(imageSource: imageSource));
    };

    if (Platform.isIOS) {
      showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
                child: Text('Camera'),
                onPressed: () {
                  Navigator.pop(context);
                  selectImageSource(ImageSource.camera);
                }),
            CupertinoActionSheetAction(
                child: Text('Gallery'),
                onPressed: () {
                  Navigator.pop(context);
                  selectImageSource(ImageSource.gallery);
                }),
          ],
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView(children: [
            ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  selectImageSource(ImageSource.camera);
                }),
            ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  selectImageSource(ImageSource.gallery);
                }),
          ]);
        },
      );
    }
  }
}
