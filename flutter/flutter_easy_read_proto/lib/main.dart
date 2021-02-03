import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = TextEditingController();
  double _fontSize = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: TextField(
                controller: controller,
                textInputAction: TextInputAction.done,
                maxLines: null,
                style: TextStyle(fontSize: _fontSize),
              ),
            ),
            Slider(
              value: _fontSize,
              onChanged: (newSize) {
                setState(() => _fontSize = newSize);
              },
              min: 20,
              max: 200,
            )
          ],
        ),
      )),
    );
  }
}
