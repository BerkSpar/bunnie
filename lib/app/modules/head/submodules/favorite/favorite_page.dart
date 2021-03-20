import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
        Observer(builder: (context) {
          if (store.collections.length == 0) {
            return Container();
          }

          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'My Collections',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              SizedBox(height: 8),
              Observer(
                builder: (context) {
                  return CarouselSlider(
                    options: CarouselOptions(
                      height: 240.0,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlay: true,
                    ),
                    items: store.collections.map((collection) {
                      return CollectionBanner(
                        collection: collection,
                      );
                    }).toList(),
                  );
                },
              ),
              SizedBox(height: 24),
            ],
          );
        }),
        Observer(
          builder: (context) {
            if (store.entries.length == 0) {
              return Container();
            }

            return ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'My Animes',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                SizedBox(height: 8),
                ListView.separated(
                  separatorBuilder: (_, index) {
                    return SizedBox(height: 8);
                  },
                  itemCount: store.entries.length,
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (_, index) {
                    final entry = store.entries[index];

                    return EntryCard(
                      entry: entry,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
