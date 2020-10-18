import 'dart:async';

import 'package:amplify_and_flutter_proto/analytics/analytic_events.dart';
import 'package:amplify_and_flutter_proto/analytics/analytics_serice.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final StreamController<List<String>> imageKeysController;
  final VoidCallback shouldLogOut;
  final VoidCallback shouldShowCamera;

  GalleryPage(
      {Key key,
      this.imageKeysController,
      @required this.shouldLogOut,
      @required this.shouldShowCamera}) {
    AnalyticsService.log(ViewGalleryEvent());
  }

  Widget _galleryGrid() {
    return StreamBuilder(
        stream: imageKeysController.stream,
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            // Show grid
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: snapshot.data.length,
                itemBuilder: (_, index) {
                  return CachedNetworkImage(
                      imageUrl: snapshot.data[index],
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()));
                });
          } else {
            // No images to display
            return Text('No images uploaded');
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Icon(Icons.more_vert),
              onTap: shouldLogOut,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.camera), onPressed: shouldShowCamera),
      body: Container(child: _galleryGrid()),
    );
  }
}
