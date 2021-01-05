import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final BorderRadius borderRadius;

  RoundedImage({
    this.height,
    this.width,
    @required this.borderRadius,
    @required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (_, provider) {
        return ClipRRect(
          borderRadius: borderRadius,
          child: Image(
            image: provider,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
        );
      },
      progressIndicatorBuilder: (_, url, download) {
        return Center(
          child: Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator(
              value: download.progress,
            ),
          ),
        );
      },
      errorWidget: (_, url, error) {
        return Container(
          height: 80,
          width: 80,
          child: Icon(
            Icons.error,
            size: 40,
          ),
        );
      },
    );
  }
}
