import 'package:amplify_and_flutter_proto/analytics/analytic_events.dart';
import 'package:amplify_and_flutter_proto/analytics/analytics_serice.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class TakePicturePage extends StatefulWidget {
  final CameraDescription camera;
  final ValueChanged<String> didProvideImagePath;

  TakePicturePage(
      {Key key, @required this.camera, @required this.didProvideImagePath})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TakePicturePageState();
}

class _TakePicturePageState extends State<TakePicturePage> {
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(widget.camera, ResolutionPreset.medium);

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_controller);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: _takePicture,
      ),
    );
  }

  void _takePicture() async {
    try {
      await _initializeControllerFuture;

      final path =
          join((await getTemporaryDirectory()).path, '${DateTime.now()}.png');

      await _controller.takePicture(path);

      widget.didProvideImagePath(path);

      AnalyticsService.log(TakePictureEvent(cameraType: widget.camera.name));
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
