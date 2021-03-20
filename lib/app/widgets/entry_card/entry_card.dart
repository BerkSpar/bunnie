import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/entry.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/widgets/number_progress/number_progress.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';

class EntryCard extends StatelessWidget {
  final Entry entry;

  EntryCard({
    @required this.entry,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            RoundedImage(
              imageUrl: entry.anime?.coverImage?.medium ?? '',
              borderRadius: BorderRadius.circular(8),
              height: 80,
              width: 80,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        entry.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: BunnieColors.blackBrown,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: entry.progress,
                  ),
                  SizedBox(height: 8),
                  NumberProgress(
                    current: entry.currentEpisode,
                    max: entry.totalEpisodes,
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
