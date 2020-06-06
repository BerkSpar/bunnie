import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class CardSearchWidget extends StatelessWidget {
  final Anime anime;

  const CardSearchWidget(this.anime);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network(
              anime.attributes.posterImage.medium,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Text(
                  anime.attributes.titles.enJp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
