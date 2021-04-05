import 'package:flutter/material.dart';

class NewPostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: newPostPage(),
      ),
    );
  }

  Widget newPostPage() {
    return Column(
      children: [
        _image(),
        _caption(),
      ],
    );
  }

  Widget _image() {
    return SizedBox(
      child: Center(
        child: GestureDetector(
          child: Icon(
            Icons.photo_sharp,
            size: 250,
          ),
          onTap: () => print('ohai'),
        ),
      ),
    );
  }

  Widget _caption() {
    return TextField(
      maxLines: null,
      decoration: InputDecoration.collapsed(hintText: 'Enter a caption...'),
    );
  }
}
