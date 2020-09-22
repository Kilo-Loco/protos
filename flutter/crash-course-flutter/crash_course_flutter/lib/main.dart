import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban Dictionary',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: "Enter a term"
                  ),
                ),
                FlatButton(
                    onPressed: onSearchTapped,
                    child: Text("Search"),
                    color: Colors.purpleAccent,
                    textColor: Colors.white,
                )
              ],
            ),
          ),
      ),
    );
  }

  void onSearchTapped() {
    var text = _controller.text;
    print(text);
  }
}
