import 'package:flutter/material.dart';

class EnterTermPage extends StatefulWidget {
  EnterTermPage({Key key, @required this.searchForTerm}) : super(key: key);
  static const valueKey = ValueKey('EnterTermKey');

  final String title = "Urban Dictionary Flutter";
  final ValueChanged<String> searchForTerm;

  @override
  State<StatefulWidget> createState() => _EnterTermPageState();
}

class _EnterTermPageState extends State<EnterTermPage> {
  var termFieldController = TextEditingController();

  Widget termForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: termFieldController,
          decoration: InputDecoration(labelText: "Term"),
        ),
        FlatButton(
            onPressed: () => widget.searchForTerm(termFieldController.text),
            color: Colors.purple,
            textColor: Colors.white,
            child: Text("Search"))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Padding(padding: EdgeInsets.all(40), child: termForm()),
      ),
    );
  }
}
