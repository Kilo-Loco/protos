import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> focus = [false, false, false, false];
  List<int> sequence = [0, 1, 2, 3, 3, 1, 3, 2, 1, 0];

  int userIndex = 0;
  int focusIndex = 0;

  Color colorForFocus(int index, bool isFocused) {
    if (index == 0) {
      return isFocused ? Colors.lightGreen : Colors.green;
    } else if (index == 1) {
      return isFocused ? Colors.pink : Colors.red;
    } else if (index == 2) {
      return isFocused ? Colors.lightBlue : Colors.blue;
    } else if (index == 3) {
      return isFocused ? Colors.orange : Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        startNextSequence();
                      },
                      child: Container(),
                      color: colorForFocus(0, sequence[focusIndex] == 0),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Container(),
                      color: colorForFocus(1, sequence[focusIndex] == 0),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Container(),
                      color: colorForFocus(2, sequence[focusIndex] == 0),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Container(),
                      color: colorForFocus(3, sequence[focusIndex] == 0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startNextSequence() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (focusIndex < sequence.length) {
          focusIndex++;
        } else {
          timer.cancel();
          focusIndex = -1;
        }
        print(focusIndex);
      });
    });
  }
}
