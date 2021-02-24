import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final _imagePicker = ImagePicker();
  File _imageFile;

  ImagePicker _imagePicker;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: _imageFile != null ? Image.file(_imageFile) : Container(),
      floatingActionButton: Builder(
          builder: ((context) => FloatingActionButton(
                child: Icon(Icons.photo),
                onPressed: () => _showImagePickerOptions(context),
              ))),
    ));
  }

  void _openImagePicker(BuildContext context, ImageSource source) async {
    Navigator.of(context).pop();
    _imagePicker = ImagePicker();
    final pickedFile = await _imagePicker.getImage(source: source);
    setState(() => _imageFile = File(pickedFile.path));
    _imagePicker = null;
  }

  void _showImagePickerOptions(context) {
    if (Platform.isIOS) {
      showCupertinoModalPopup(
          context: context,
          builder: (context) {
            return CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () =>
                        _openImagePicker(context, ImageSource.camera),
                    child: Text('Camera')),
                CupertinoActionSheetAction(
                    onPressed: () =>
                        _openImagePicker(context, ImageSource.gallery),
                    child: Text('Gallery'))
              ],
              cancelButton: CupertinoActionSheetAction(
                child: Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            );
          });
    } else {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return SafeArea(
              child: Container(
                child: Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.camera_alt),
                      title: Text('Camera'),
                      onTap: () =>
                          _openImagePicker(context, ImageSource.camera),
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_album),
                      title: Text('Photo Gallery'),
                      onTap: () =>
                          _openImagePicker(context, ImageSource.gallery),
                    )
                  ],
                ),
              ),
            );
          });
    }
  }
}
