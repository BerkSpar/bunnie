import 'dart:ui';
import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'anime_controller.dart';

class AnimePage extends StatefulWidget {
  final int animeId;

  const AnimePage({Key key, this.animeId}) : super(key: key);

  @override
  _AnimePageState createState() => _AnimePageState();
}

class _AnimePageState extends ModularState<AnimePage, AnimeController> {
  @override
  void initState() {
    controller.getAnime(widget.animeId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (controller.anime == null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return NestedScrollView(
              headerSliverBuilder: (_, __) => <Widget>[
                AnimeAppBar(controller: controller),
              ],
              body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                children: [
                  Text(
                    controller.anime.title,
                    style:
                        TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text('Adicionar à biblioteca'),
                            textColor: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class AnimeAppBar extends StatelessWidget {
  const AnimeAppBar({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final AnimeController controller;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      floating: false,
      pinned: false,
      snap: false,
      elevation: 5,
      backgroundColor: Colors.transparent,
      flexibleSpace: BackgroundFlexibleSpaceBar(
        title: Container(
          height: 120,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                controller.anime.imageUrl,
              ),
            ),
          ),
        ),
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 20.0, bottom: 20.0),
        background: Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                controller.anime.imageUrl,
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
