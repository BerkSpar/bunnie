import 'package:flutter/material.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/widgets/button/button_widget.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  TitleWidget({
    @required this.title,
    this.onTap,
  });

  _getButton() {
    if (onTap != null) {
      return ButtonWidget(
        onTap: () {},
        iconData: Icons.add,
      );
    }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Suas Coleções',
          style: TextStyle(
            fontSize: 32,
            color: BunnieColors.blackBrown,
            fontWeight: FontWeight.w700,
          ),
        ),
        _getButton(),
      ],
    );
  }
}
