import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:relational_data_amplify_flutter_proto/models/Comment.dart';
import 'package:relational_data_amplify_flutter_proto/models/Post.dart';

class PostDetailsView extends StatefulWidget {
  final Post post;

  const PostDetailsView({Key? key, required this.post}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PostDetailsViewState();
}

class _PostDetailsViewState extends State<PostDetailsView> {
  List<Comment> _comments = [];
  Stream<QuerySnapshot<Comment>>? _stream;

  @override
  void initState() {
    super.initState();
    _getComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.post.title)),
      body: _CommentsList(comments: _comments),
    );
  }

  void _getComments() {
    _stream = Amplify.DataStore.observeQuery(
      Comment.classType,
      where: Comment.POSTID.eq(widget.post.id),
    );

    _stream?.listen((snapshot) => setState(() => _comments = snapshot.items));
  }

  @override
  void dispose() {
    _stream = null;
    super.dispose();
  }
}

class _CommentsList extends StatelessWidget {
  final List<Comment> comments;

  const _CommentsList({Key? key, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(title: Text(comments[index].body)),
      ),
    );
  }
}
