import 'package:bunnie/app/utils/bunnie_colors.dart';
import 'package:flutter/material.dart';

class NumberProgress extends StatelessWidget {
  final int current;
  final int max;
  final VoidCallback onAdd;
  final VoidCallback onSubtract;

  const NumberProgress({
    Key? key,
    required this.current,
    required this.max,
    required this.onAdd,
    required this.onSubtract,
  }) : super(key: key);

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
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              ),
              height: 20,
              child: const Center(
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
            style: const TextStyle(
              color: BunnieColors.blackBrown,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: onAdd,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              ),
              height: 20,
              child: const Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: BunnieColors.blackBrown,
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
