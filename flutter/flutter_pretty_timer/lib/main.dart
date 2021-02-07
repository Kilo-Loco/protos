import 'dart:async';

import 'package:animated_counter/animated_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _minutesController =
      TextEditingController.fromValue(TextEditingValue(text: '5'));
  final _secondsController =
      TextEditingController.fromValue(TextEditingValue(text: '0'));

  int get _totalSeconds {
    final minutes = int.parse(_minutesController.text);
    final seconds = int.parse(_secondsController.text);
    return (minutes * 60) + seconds;
  }

  set _totalSeconds(int newValue) {
    final minutes = newValue ~/ 60;
    final seconds = newValue % 60;

    _minutesController.text = minutes.toString();
    _secondsController.text = seconds.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: WaveCounter(
                        initialCounter: _totalSeconds, color: Colors.purple)
                    .build(context))));
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: _totalSeconds), (timer) {
      setState(() => _totalSeconds--);
    });
  }
}
