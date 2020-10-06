import 'package:flutter/material.dart';
import 'term.dart';
import 'package:flutter_html/flutter_html.dart';

class TermDetailsPage extends StatelessWidget {
  TermDetailsPage({Key key, this.term}) : super(key: key);
  static const valueKey = ValueKey('TermDetailsPage');
  final Term term;

  Widget _detailsView() {
    return SafeArea(
      minimum: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Html(data: term.htmlDefinition),
          Spacer(),
          Row(
            children: [
              Text('Likes: ${term.likes}'),
              Padding(padding: EdgeInsets.all(8)),
              Text('Dislikes: ${term.dislikes}')
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(term.word)),
      body: _detailsView(),
    );
  }
}
