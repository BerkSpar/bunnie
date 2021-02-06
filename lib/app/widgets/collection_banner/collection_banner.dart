import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/collection.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';

class CollectionBanner extends StatelessWidget {
  final Collection collection;

  CollectionBanner({
    @required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.white.withOpacity(0.1),
                ],
              ),
            ),
            child: CachedNetworkImage(
              imageUrl: collection.imageUrl,
              height: double.maxFinite,
              width: double.maxFinite,
              imageBuilder: (_, imageProvider) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                );
              },
              progressIndicatorBuilder: (_, __, download) {
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
              errorWidget: (_, __, ___) {
                return Container(
                  height: 80,
                  width: 80,
                  child: Icon(
                    Icons.error,
                    size: 40,
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                collection.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
