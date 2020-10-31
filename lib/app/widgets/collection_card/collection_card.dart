import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/collection.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';

class CollectionCard extends StatelessWidget {
  final Collection collection;

  CollectionCard({
    @required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147,
      width: 147,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(collection.imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12.25),
      ),
      padding: EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          collection.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: BunnieColors.white,
          ),
        ),
      ),
    );
  }
}
