import 'package:flutter/material.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';

class NumberProgress extends StatelessWidget {
  final int current;
  final int max;
  final Function onAdd;
  final Function onSubtract;

  NumberProgress({
    @required this.current,
    @required this.max,
    @required this.onAdd,
    @required this.onSubtract,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: onSubtract,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).accentColor.withOpacity(0.3),
              ),
              height: 20,
              child: Center(
                child: Text(
                  '-',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: BunnieColors.blackBrown,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            '$current of $max episodes',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: onAdd,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).accentColor.withOpacity(0.3),
              ),
              height: 20,
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
