import 'package:flutter/material.dart';
import 'models/anime.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  var animes = List<Anime>();

  MainPage() {
    animes = [];
    animes.add(Anime(name: "Naruto", isWatched: false));
    animes.add(Anime(name: "Your Name", isWatched: true));
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
        itemBuilder: (_, index) {
          final anime = widget.animes[index];

          return CheckboxListTile(
            title: Text(anime.name),
            key: Key(anime.name),
            value: anime.isWatched,
            onChanged: (value) {},
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Adicionar um Anime novo',
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
