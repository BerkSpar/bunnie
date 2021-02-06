import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/collection.dart';
import 'package:rabbited/app/shared/models/cover_image.dart';
import 'package:rabbited/app/shared/models/entry.dart';
import 'package:rabbited/app/shared/repositories/bunnie_api_repository.dart';

part 'favorite_controller.g.dart';

@Injectable()
class FavoriteController = _FavoriteControllerBase with _$FavoriteController;

abstract class _FavoriteControllerBase with Store {
  final api = Modular.get<BunnieApiRepository>();

  @observable
  List<Collection> collections = <Collection>[];
  @observable
  List<Entry> entries = <Entry>[];

  _FavoriteControllerBase() {
    _init();
  }

  _init() async {
    getCollections();
  }

  @action
  getCollections() async {
    final result = await api.getCollections();
    collections = result.getOrElse(() => <Collection>[]);
  }
}
