import 'package:amplify_and_flutter_proto/session/camera_page.dart';
import 'package:amplify_and_flutter_proto/session/gallery_page.dart';
import 'package:flutter/material.dart';

class SessionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  int _currentPageIndex = 0;

  List<Widget> _pages = [CameraPage(), GalleryPage()];

  void _onTabTapped(int index) {
    setState(() {
      this._currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.camera)),
          BottomNavigationBarItem(icon: Icon(Icons.photo_library))
        ],
        onTap: _onTabTapped,
      ),
      body: _pages[_currentPageIndex],
    );
  }
}
