import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/widgets/anime_list_tile/anime_list_tile.dart';
import 'package:rabbited/app/widgets/button/button_widget.dart';
import 'package:rabbited/app/widgets/collection_card/collection_card.dart';
import 'package:rabbited/app/widgets/title/title_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        children: [
          SizedBox(height: 48),
          Header(),
          SizedBox(height: 48),
          TitleWidget(
            title: 'Minhas Coleções',
            onTap: () {},
          ),
          SizedBox(height: 32),
          Container(
            height: 148,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, index) {
                return SizedBox(width: 16);
              },
              itemCount: controller.myCollections.length,
              itemBuilder: (_, index) {
                final collection = controller.myCollections[index];

                return CollectionCard(
                  collection: collection,
                );
              },
            ),
          ),
          SizedBox(height: 48),
          TitleWidget(
            title: 'Descubra',
          ),
          ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (_, index) {
              return SizedBox(height: 32);
            },
            itemCount: controller.explore.length,
            itemBuilder: (_, index) {
              final anime = controller.explore[index];

              return AnimeListTile(
                anime: anime,
              );
            },
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonWidget(
          onTap: () {},
          iconData: Icons.search,
        ),
        Image.asset(
          'assets/images/logo.png',
          width: 48,
        ),
        ButtonWidget(
          onTap: () {},
          image: NetworkImage(
            'https://avatars0.githubusercontent.com/u/67290471?s=460&u=3a40833b6b1e19b81017cb915f8af816f1e51ea7&v=4',
          ),
        ),
      ],
    );
  }
}
