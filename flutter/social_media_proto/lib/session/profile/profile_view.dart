import 'package:flutter/material.dart';

final imagePath =
    'https://img3.hulu.com/user/v3/artwork/d52faa4f-cf30-4919-9ad3-5d540c026b43?base_image_bucket_name=image_manager&base_image=706d6860-1dd5-4451-b5e4-8c31daa97f94&size=600x338&format=jpeg';

class ProfileView extends StatelessWidget {
  final _isCurrentUser = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F7),
      body: _profilePage(),
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
    return ListTile(
      tileColor: Colors.white,
      leading: Icon(Icons.person),
      title: Text('Kilo Loco'),
    );
  }

  Widget _emailTile() {
    return ListTile(
      tileColor: Colors.white,
      leading: Icon(Icons.mail),
      title: Text('kyle@kiloloco.com'),
    );
  }

  Widget _descriptionTile() {
    return ListTile(
      tileColor: Colors.white,
      leading: Icon(Icons.edit),
      title: TextField(
        toolbarOptions: ToolbarOptions(
          copy: _isCurrentUser,
          cut: _isCurrentUser,
          paste: _isCurrentUser,
          selectAll: _isCurrentUser,
        ),
        readOnly: !_isCurrentUser,
        controller: TextEditingController()
          ..text =
              'Hello errrbody, its ya boi kilo loco and we are codin some stuff up in that dart lang with flutter',
        maxLines: null,
      ),
    );
  }
}
