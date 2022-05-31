import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:relational_data_amplify_flutter_proto/models/Comment.dart';

class CommentsView extends StatefulWidget {
  const CommentsView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CommentsViewState();
}

class _CommentsViewState extends State<CommentsView> {
  List<Comment> _comments = [];
  late Stream<QuerySnapshot<Comment>> _stream;

  @override
  void initState() {
    super.initState();
    _getComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Comments')),
      body: _CommentsList(
        comments: _comments,
      ),
    );
  }

  void _getComments() {
    _stream = Amplify.DataStore.observeQuery(Comment.classType);

    _stream.listen(
      (snapshot) => setState(() => _comments = snapshot.items),
    );
  }
}

class _CommentsList extends StatelessWidget {
  final List<Comment> comments;

  const _CommentsList({Key? key, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return ListTile(
          title: Text(comment.body),
        );
      },
    );
  }
}
