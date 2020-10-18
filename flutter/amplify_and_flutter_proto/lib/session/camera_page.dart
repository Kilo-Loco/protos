import 'dart:io';

import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  final VoidCallback shouldShowCamera;
  final String imagePath;

  CameraPage({Key key, @required this.shouldShowCamera, this.imagePath})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          if (widget.imagePath != null)
            Column(
              children: [
                Image.file(File(widget.imagePath)),
                FlatButton(
                  onPressed: () {},
                  child: Text('Upload Image'),
                  color: Colors.green,
                  textColor: Colors.white,
                )
              ],
            ),
          if (widget.imagePath == null)
            FlatButton(
              onPressed: widget.shouldShowCamera,
              child: Text('Open Camera'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
            ),
        ]),
      ),
    );
  }
}
