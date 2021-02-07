import 'package:flutter/material.dart';

class TimeIntervalCard extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  TimeIntervalCard({Key key, this.label, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        height: 100,
        child: Card(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(label),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: InputBorder.none),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
              ),
            ],
          )),
          elevation: 4,
        ));
  }
}
