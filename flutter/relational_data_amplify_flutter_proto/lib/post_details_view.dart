import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:relational_data_amplify_flutter_proto/models/Comment.dart';
import 'package:relational_data_amplify_flutter_proto/models/Post.dart';
import 'package:relational_data_amplify_flutter_proto/save_model_action_button.dart';

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
  void setState(VoidCallback fn) {
    if (!mounted) return;
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.post.title)),
      body: _CommentsList(
        comments: _comments,
        onDeleteComment: _deleteComment,
      ),
      floatingActionButton: SaveModelActionButton(
        modelName: 'Comment',
        onSave: _saveComment,
      ),
    );
  }

  void _getComments() {
    _stream = Amplify.DataStore.observeQuery(
      Comment.classType,
      where: Comment.POSTID.eq(widget.post.id),
    );

    _stream?.listen((snapshot) => setState(() => _comments = snapshot.items));
  }

  void _saveComment(String body) async {
    final newComment = Comment(body: body, postID: widget.post.id);
    await Amplify.DataStore.save(newComment);
  }

  void _deleteComment(Comment comment) async {
    await Amplify.DataStore.delete(comment);
    _comments.removeWhere((element) => element.id == comment.id);
  }

  @override
  void dispose() {
    _stream = null;
    super.dispose();
  }
}

class _CommentsList extends StatelessWidget {
  final List<Comment> comments;
  final Function(Comment) onDeleteComment;

  const _CommentsList({
    Key? key,
    required this.comments,
    required this.onDeleteComment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        return Dismissible(
          key: Key(comment.id),
          background: Container(
            color: Colors.red,
            child: const Icon(Icons.delete),
            alignment: Alignment.centerRight,
          ),
          onDismissed: (_) => onDeleteComment(comment),
          child: Card(
            child: ListTile(title: Text(comment.body)),
          ),
        );
      },
    );
  }
}
