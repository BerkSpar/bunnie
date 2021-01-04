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
      child: RoundedImage(
        height: double.maxFinite,
        width: double.maxFinite,
        borderRadius: BorderRadius.circular(8),
        imageUrl: collection.imageUrl,
      ),
    );
  }
}
