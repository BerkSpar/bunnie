import 'package:flutter/material.dart';
import 'package:bunnie/app/shared/models/entry.dart';
import 'package:bunnie/app/utils/bunnie_colors.dart';
import 'package:bunnie/app/widgets/number_progress/number_progress.dart';
import 'package:bunnie/app/widgets/rounded_image/rounded_image.dart';

class EntryCard extends StatelessWidget {
  final Entry entry;

  const EntryCard({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            RoundedImage(
              imageUrl: entry.anime?.coverImage?.medium ?? '',
              borderRadius: BorderRadius.circular(8),
              height: 80,
              width: 80,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        entry.name ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: BunnieColors.blackBrown,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: entry.progress,
                  ),
                  const SizedBox(height: 8),
                  NumberProgress(
                    current: entry.currentEpisode ?? 0,
                    max: entry.totalEpisodes ?? 0,
                    onAdd: () {},
                    onSubtract: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
