import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import 'package:social_media_proto/session/profile/profile_bloc.dart';
import 'package:social_media_proto/session/profile/profile_event.dart';
import 'package:social_media_proto/session/session_cubit.dart';

import 'profile_state.dart';

final imagePath =
    'https://img3.hulu.com/user/v3/artwork/d52faa4f-cf30-4919-9ad3-5d540c026b43?base_image_bucket_name=image_manager&base_image=706d6860-1dd5-4451-b5e4-8c31daa97f94&size=600x338&format=jpeg';

class ProfileView extends StatelessWidget {
  final _isCurrentUser = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F7),
      body: BlocProvider(
        create: (context) =>
            ProfileBloc.fromSession(context.read<SessionCubit>()),
        child: _profilePage(),
      ),
    );
  }

  Widget _profilePage() {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            _avatar(),
            if (_isCurrentUser) _changeAvatarButton(),
            SizedBox(height: 30),
            _usernameTile(),
            if (_isCurrentUser) _emailTile(),
            _descriptionTile(),
            _saveProfileChangesButton(),
          ],
        ),
      ),
    );
  }

  Widget _avatar() {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(imagePath),
    );
  }

  Widget _changeAvatarButton() {
    return TextButton(
      child: Text('Change Avatar'),
      onPressed: () {},
    );
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
          toolbarOptions: ToolbarOptions(
            copy: _isCurrentUser,
            cut: _isCurrentUser,
            paste: _isCurrentUser,
            selectAll: _isCurrentUser,
          ),
          decoration: InputDecoration.collapsed(
              hintText: 'Say something about yourself'),
          readOnly: !_isCurrentUser,
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
}
