import 'package:flutter/material.dart';
import 'package:native_color/native_color.dart';
import 'models/anime.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rabbited',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  var animes = List<Anime>();

  MainPage() {
    animes = [];
  }

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Rabbited',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.animes.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (_, index) {
          final anime = widget.animes[index];

          return CardAnime(anime: anime);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.animes.add(Anime.searchAnime('Kimi no na ya'));
          });
        },
        tooltip: 'Adicionar um Anime',
        child: Icon(Icons.playlist_add),
        backgroundColor: Colors.cyan,
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        notchMargin: 6,
        shape: CircularNotchedRectangle(),
        color: Colors.black,
      ),
    );
  }
}

class CardAnime extends StatelessWidget {
  const CardAnime({
    Key key,
    @required this.anime,
  }) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        color: HexColor(anime.mainColor),
        child: Column(
          children: <Widget>[
            Image.network(
              anime.imageUrl,
            ),
            ListTile(
              title: Text(
                anime.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Foi assistido: ' + anime.isWatched.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              onTap: () {
                print('clicou no: ' + anime.name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
