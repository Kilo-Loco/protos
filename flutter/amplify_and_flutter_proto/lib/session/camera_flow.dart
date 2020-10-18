import 'package:amplify_and_flutter_proto/session/gallery_page.dart';
import 'package:amplify_and_flutter_proto/session/storage_service.dart';
import 'package:amplify_and_flutter_proto/session/take_picture_page.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraFlow extends StatefulWidget {
  final AuthUser currentUser;
  final VoidCallback shouldLogOut;

  CameraFlow({Key key, @required this.currentUser, @required this.shouldLogOut})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CameraFlowState();
}

class _CameraFlowState extends State<CameraFlow> {
  CameraDescription _camera;

  bool _shouldShowCamera = false;
  StorageService _storageService;

  void _getCameras() async {
    final camerasList = await availableCameras();
    if (camerasList.isEmpty) return;
    setState(() {
      this._camera = camerasList.first;
    });
  }

  void _toggleCameraOpen(bool isOpen) {
    setState(() {
      this._shouldShowCamera = isOpen;
    });
  }

  List<Page<dynamic>> get _pages {
    return [
      // Show Gallery Page
      MaterialPage(
          child: GalleryPage(
        imageKeysController: _storageService.imageUrlsController,
        shouldLogOut: widget.shouldLogOut,
        shouldShowCamera: () => _toggleCameraOpen(true),
      )),

      // Show Take Picture Page
      if (_camera != null && _shouldShowCamera)
        MaterialPage(
            child: TakePicturePage(
          camera: _camera,
          didProvideImagePath: (imagePath) {
            this._toggleCameraOpen(false);
            this._storageService.uploadImageAtPath(imagePath);
          },
        ))
    ];
  }

  @override
  void initState() {
    super.initState();
    _storageService = StorageService(currentUser: widget.currentUser);
    _getCameras();
    _storageService.getImages();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: _pages,
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
