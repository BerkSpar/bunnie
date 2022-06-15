import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bunnie/app/widgets/collection_banner/collection_banner.dart';
import 'package:bunnie/app/widgets/entry_card/entry_card.dart';
import 'favorite_controller.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final controller = Modular.get<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 32),
        Observer(builder: (context) {
          if (controller.collections.isEmpty) {
            return Container();
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'My Collections',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(height: 8),
              Observer(
                builder: (context) {
                  return CarouselSlider(
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
                  );
                },
              ),
              const SizedBox(height: 24),
            ],
          );
        }),
        Observer(
          builder: (context) {
            if (controller.entries.isEmpty) {
              return Container();
            }

            return ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'My Animes',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                const SizedBox(height: 8),
                ListView.separated(
                  separatorBuilder: (_, index) {
                    return const SizedBox(height: 8);
                  },
                  itemCount: controller.entries.length,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (_, index) {
                    final entry = controller.entries[index];

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
