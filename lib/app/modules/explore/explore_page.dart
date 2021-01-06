import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/explore_list.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/widgets/explore_list/explore_list_widget.dart';
import 'explore_controller.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends ModularState<ExplorePage, ExploreController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Animes',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: controller.animeLists.length,
          separatorBuilder: (_, index) {
            return SizedBox(height: 16);
          },
          itemBuilder: (_, index) {
            final exploreList = controller.animeLists[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    exploreList.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: BunnieColors.brown,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ExploreListWidget(
                  exploreList: exploreList,
                ),
              ],
            );
          },
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Collections',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: controller.collectionLists.length,
          separatorBuilder: (_, index) {
            return SizedBox(height: 16);
          },
          itemBuilder: (_, index) {
            final exploreList = controller.collectionLists[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    exploreList.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: BunnieColors.brown,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ExploreListWidget(
                  exploreList: exploreList,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
