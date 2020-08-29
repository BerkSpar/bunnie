import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/main/presenter/widgets/simple_card/simple_card_widget.dart';
import 'package:readmore/readmore.dart';
import 'anime_controller.dart';

class AnimePage extends StatefulWidget {
  final int animeId;

  const AnimePage({Key key, this.animeId}) : super(key: key);

  @override
  _AnimePageState createState() => _AnimePageState();
}

class _AnimePageState extends ModularState<AnimePage, AnimeController> {
  final double _imageHeight = 190;
  final double _imageWidgth = 140;

  double _getImageLeft() {
    return MediaQuery.of(context).size.width * 0.5 - _imageWidgth / 2;
  }

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
            return Stack(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.orange.withOpacity(0.45),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SafeArea(
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            '${controller.anime.title}',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SimpleCardWidget(
                                  title: 'Score',
                                  content:
                                      controller.anime.score.toStringAsFixed(1),
                                ),
                                SimpleCardWidget(
                                  title: 'Episodes',
                                  content: controller.anime.episodes.toString(),
                                ),
                                SimpleCardWidget(
                                  title: 'Duration',
                                  content: controller.anime.duration.substring(
                                      0,
                                      controller.anime.duration.indexOf(' ')),
                                ),
                                SimpleCardWidget(
                                  title: 'Type',
                                  content: controller.anime.type,
                                ),
                                SimpleCardWidget(
                                  title: 'Age',
                                  content: '13+',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          ReadMoreText(
                            controller.anime.synopsis,
                            trimLines: 4,
                            colorClickableText: Colors.pink,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: '...Show more',
                            trimExpandedText: ' show less',
                            style: TextStyle(color: Colors.black54),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    child: Text('Adicionar à biblioteca'),
                                    textColor: Colors.white,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 40,
                  left: _getImageLeft(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                          controller.anime.imageUrl,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    width: _imageWidgth,
                    height: _imageHeight,
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
