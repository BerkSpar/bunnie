import 'package:flutter/material.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';

class ButtonWidget extends StatelessWidget {
  final IconData iconData;
  final ImageProvider<Object> image;
  final Widget child;
  final Function onTap;

  ButtonWidget({
    @required this.onTap,
    this.iconData,
    this.image,
    this.child,
  });

  _getImage() {
    if (image != null) {
      return DecorationImage(
        image: image,
      );
    }
  }

  _getChild() {
    if (iconData != null) {
      return Icon(
        iconData,
        size: 16,
        color: BunnieColors.white,
      );
    }

    if (child != null) {
      return child;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: BunnieColors.main,
          borderRadius: BorderRadius.circular(8),
          image: _getImage(),
        ),
        child: _getChild(),
      ),
    );
  }
}
