import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bunnie/app/utils/bunnie_colors.dart';
import 'package:bunnie/app/widgets/explore_list/explore_list_widget.dart';
import 'explore_controller.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final controller = Modular.get<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Animes',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: controller.animeLists.length,
          separatorBuilder: (_, index) {
            return const SizedBox(height: 16);
          },
          itemBuilder: (_, index) {
            final exploreList = controller.animeLists[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    exploreList.name ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: BunnieColors.brown,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ExploreListWidget(
                  exploreList: exploreList,
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Collections',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: controller.collectionLists.length,
          separatorBuilder: (_, index) {
            return const SizedBox(height: 16);
          },
          itemBuilder: (_, index) {
            final exploreList = controller.collectionLists[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    exploreList.name ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: BunnieColors.brown,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
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
