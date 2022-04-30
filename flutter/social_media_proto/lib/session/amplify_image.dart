import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:social_media_proto/session/image_cache.dart';

class AmplifyImage extends StatefulWidget {
  // final Widget placeholder;
  final String imageKey;

  AmplifyImage({
    Key key,
    // this.placeholder,
    this.imageKey,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AmplifyImageState();
}

class _AmplifyImageState extends State<AmplifyImage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ImageUrlCache.instance.getUrl(widget.imageKey),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: 400,
            child: CachedNetworkImage(
              imageUrl: snapshot.data,
              fit: BoxFit.cover,
            ),
          );
        } else {
          return Container(
            height: 400,
          );
        }
      },
    );
  }
}
