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
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      '${controller.anime.title}',
                      style: TextStyle(fontSize: 36),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.45),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 60,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Score'),
                                Text(
                                  '${controller.anime.score.toStringAsFixed(1)}',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.45),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 60,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Episodes'),
                                Text(
                                  '${controller.anime.episodes}',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.45),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 60,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Duration'),
                                Text(
                                  '${controller.anime.duration.substring(0, controller.anime.duration.indexOf(' '))} min',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.45),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 60,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Type'),
                                Text(
                                  '${controller.anime.type}',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.45),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 60,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Age'),
                                Text(
                                  '13+',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Naruto é uma série de mangá escrita e ilustrada por Masashi Kishimoto, que conta a história de Naruto Uzumaki, um jovem ninja que constantemente procura por reconhecimento e sonha em se tornar Hokage, o ninja de sua vila.',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
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
                    ),
                  ],
                ),
                Positioned(
                  bottom: 700,
                  left: 158,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                            controller.anime.imageUrl,
                          ),
                          fit: BoxFit.fill),
                    ),
                    width: 100,
                    height: 140,
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
