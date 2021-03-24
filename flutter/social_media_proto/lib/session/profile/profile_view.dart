import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/data_repository.dart';
import 'package:social_media_proto/session/profile/profile_bloc.dart';
import 'package:social_media_proto/session/profile/profile_event.dart';
import 'package:social_media_proto/session/session_cubit.dart';
import 'package:social_media_proto/session/storage_repository.dart';
import 'profile_state.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        sessionCubit: context.read<SessionCubit>(),
        dataRepo: context.read<DataRepository>(),
        storageRepo: context.read<StorageRepository>(),
      ),
      child: Scaffold(
        appBar: _appBar(),
        backgroundColor: Color(0xFFF2F2F7),
        body: _profilePage(),
      ),
    );
  }

  Widget _appBar() {
    final appBarHeight = AppBar().preferredSize.height;
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
        return AppBar(
          title: Text('Profile'),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () => context.read<SessionCubit>().signOut(),
            )
          ],
        );
      }),
    );
  }

  Widget _profilePage() {
    return BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.pickerSourceActionSheetVisible) {
            _showPickerSourceActionSheet(context);
          }
        },
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                _avatar(),
                _changeAvatarButton(),
                SizedBox(height: 30),
                _usernameTile(),
                _emailTile(),
                _descriptionTile(),
                _saveProfileChangesButton(),
              ],
            ),
          ),
        ));
  }

  Widget _avatar() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return state.avatarPath != null
          ? Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(state.avatarPath),
                ),
                if (state.avatarIsChanging) CircularProgressIndicator(),
              ],
            )
          : CircularProgressIndicator();
    });
  }

  Widget _changeAvatarButton() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return TextButton(
        child: Text('Change Avatar'),
        onPressed: () => context.read<ProfileBloc>().add(ChangeAvatarRequest()),
      );
    });
  }

  Widget _usernameTile() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return ListTile(
        tileColor: Colors.white,
        leading: Icon(Icons.person),
        title: Text(state.username),
      );
    });
  }

  Widget _emailTile() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return ListTile(
        tileColor: Colors.white,
        leading: Icon(Icons.mail),
        title: Text(state.email),
      );
    });
  }

  Widget _descriptionTile() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return ListTile(
        tileColor: Colors.white,
        leading: Icon(Icons.edit),
        title: TextFormField(
          initialValue: state.userDescription,
          decoration: InputDecoration.collapsed(
              hintText: 'Say something about yourself'),
          maxLines: null,
          onChanged: (value) => context
              .read<ProfileBloc>()
              .add(ProfileDescriptionChanged(description: value)),
        ),
      );
    });
  }

  Widget _saveProfileChangesButton() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? CircularProgressIndicator()
          : ElevatedButton(
              child: Text('Save Changes'),
              onPressed: () =>
                  context.read<ProfileBloc>().add(SaveProfileChanges()),
            );
    });
  }

  void _showPickerSourceActionSheet(BuildContext context) {
    Function(ImageSource) selectImageSource = (imageSource) {
      context.read<ProfileBloc>().add(OpenImagePicker(source: imageSource));
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
