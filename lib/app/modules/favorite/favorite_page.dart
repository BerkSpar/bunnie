import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/entry.dart';
import 'package:rabbited/app/widgets/collection_banner/collection_banner.dart';
import 'package:rabbited/app/widgets/entry_card/entry_card.dart';
import 'favorite_controller.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState
    extends ModularState<FavoritePage, FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'My Collections',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: 8),
        CarouselSlider(
          options: CarouselOptions(
            height: 240.0,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            autoPlay: true,
          ),
          items: controller.collections.map((collection) {
            return CollectionBanner(
              collection: collection,
            );
          }).toList(),
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'My Animes',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: 8),
        ListView.separated(
          separatorBuilder: (_, index) {
            return SizedBox(height: 8);
          },
          itemCount: controller.entries.length,
          padding: EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (_, index) {
            final entry = controller.entries[index];

            return EntryCard(
              entry: entry,
            );
          },
        ),
      ],
    );
  }
}
