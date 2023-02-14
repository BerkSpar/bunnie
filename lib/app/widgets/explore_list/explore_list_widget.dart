import 'package:bunnie/app/shared/models/explore_list.dart';
import 'package:bunnie/app/utils/bunnie_colors.dart';
import 'package:bunnie/app/widgets/rounded_image/rounded_image.dart';
import 'package:flutter/material.dart';

class ExploreListWidget extends StatelessWidget {
  final ExploreList exploreList;

  const ExploreListWidget({Key? key, required this.exploreList})
      : super(key: key);

  double get _size {
    return exploreList.exploreListType == ExploreListType.anime ? 112 : 136;
  }

  String _imageUrl(dynamic item) {
    return exploreList.exploreListType == ExploreListType.anime
        ? item.coverImage.medium
        : item.imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _size + 30,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: exploreList.itens?.length ?? 0,
        separatorBuilder: (_, index) {
          return const SizedBox(width: 8);
        },
        itemBuilder: (_, index) {
          final item = exploreList.itens?[index];

          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 16 : 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _size,
                  child: RoundedImage(
                    borderRadius: BorderRadius.zero,
                    width: _size,
                    imageUrl: _imageUrl(item),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: BunnieColors.blackBrown,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
