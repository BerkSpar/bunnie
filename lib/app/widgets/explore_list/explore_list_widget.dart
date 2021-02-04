import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/explore_list.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';

class ExploreListWidget extends StatelessWidget {
  final ExploreList exploreList;

  ExploreListWidget({
    @required this.exploreList,
  });

  double get _size {
    if (exploreList.exploreListType == ExploreListType.anime) {
      return 112;
    } else {
      return 136;
    }
  }

  String _imageUrl(dynamic item) {
    if (exploreList.exploreListType == ExploreListType.anime) {
      return item.coverImage.medium;
    } else {
      return item.imageUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size + 30,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: exploreList.itens.length,
        separatorBuilder: (_, index) {
          return SizedBox(width: 8);
        },
        itemBuilder: (_, index) {
          final item = exploreList.itens[index];

          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 16 : 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _size,
                  child: RoundedImage(
                    borderRadius: BorderRadius.zero,
                    width: _size,
                    imageUrl: _imageUrl(item),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
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
