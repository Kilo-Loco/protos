import 'package:flutter/material.dart';

import 'post.dart';

class PostDetailView extends StatelessWidget {
  final Post post;

  PostDetailView({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Center(
        child: Text(post.body),
      ),
    );
  }
}
