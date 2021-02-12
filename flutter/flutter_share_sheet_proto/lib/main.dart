import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _screenshotController = ScreenshotController();

  File _imageFile;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Screenshot(
                controller: _screenshotController,
                child: Card(
                  elevation: 2,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/day01.png'),
                          Text("Create Your First App")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: _showShareSheet, child: Text('Take Screenshot')),
            ],
          ),
        )),
      ),
    );
  }

  void _showShareSheet() async {
    final file = await _screenshotController.capture();
    Share.shareFiles([file.path]);
  }
}
