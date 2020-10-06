import 'package:flutter/material.dart';
import 'term.dart';
import 'package:flutter_html/flutter_html.dart';

class TermsPage extends StatelessWidget {
  TermsPage({Key key, this.title, this.terms, this.selectTerm});
  static const valueKey = ValueKey('TermsPage');

  final String title;
  final List<Term> terms;
  final ValueChanged<Term> selectTerm;

  Widget termsList() {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          itemCount: terms.length,
          itemBuilder: (context, index) {
            final term = terms[index];
            return Card(
              child: ListTile(
                title: Text(term.word),
                subtitle: Html(data: term.htmlDefinition),
                onTap: () {
                  selectTerm(term);
                },
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: termsList(),
    );
  }
}
