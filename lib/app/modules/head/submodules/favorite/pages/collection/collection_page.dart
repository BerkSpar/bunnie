import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rabbited/app/utils/bunnie_app_bar.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/widgets/anime_list/anime_list_widget.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';
import 'collection_controller.dart';

class CollectionPage extends StatefulWidget {
  final String id;

  CollectionPage(this.id);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState
    extends ModularState<CollectionPage, CollectionController> {
  @override
  void initState() {
    super.initState();
    store.init(widget.id);
  }

  Widget getDescription() {
    if (store.collection.description == null) {
      return Container();
    }

    return Text(
      store.collection.description,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: BunnieColors.blackBrown,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secundaryAppBar,
      body: Observer(
        builder: (context) {
          if (store.isLoading) {
            return Center(
              child: SpinKitCircle(
                color: BunnieColors.main,
              ),
            );
          }

          return ListView(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            children: [
              RoundedImage(
                borderRadius: BorderRadius.circular(8),
                imageUrl: store.collection.imageUrl,
              ),
              SizedBox(height: 8),
              Text(
                store.collection.name,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: BunnieColors.blackBrown,
                ),
              ),
              getDescription(),
              ListView.builder(
                itemCount: store.collection.animes.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (_, index) {
                  final anime = store.collection.animes[index];

                  return AnimeListWidget(anime);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
