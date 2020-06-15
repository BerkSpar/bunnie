import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:optimized_cached_image/widgets.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class AnimeBottomSheetWidget extends StatefulWidget {
  final Anime anime;

  AnimeBottomSheetWidget(this.anime);

  @override
  _AnimeBottomSheetWidgetState createState() => _AnimeBottomSheetWidgetState();
}

class _AnimeBottomSheetWidgetState extends State<AnimeBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  OptimizedCacheImage(
                    imageUrl: widget.anime.attributes.coverImage.original,
                    errorWidget: (context, url, error) => Container(),
                    filterQuality: FilterQuality.high,
                    progressIndicatorBuilder: (context, url, progress) =>
                        CircularProgressIndicator(),
                  ),
                  AutoSizeText(
                    widget.anime.attributes.canonicalTitle,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      child: Text('Cancelar'),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text('Adicionar à minha lista'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
