import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/services/hive_service.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final hiveService = Modular.get<HiveService>();

  @observable
  List<Anime> savedAnimes = List<Anime>();

  _AppControllerBase() {
    getCurrentAnimes();
    // hiveService.deleteAllAnimes();
  }

  @action
  getCurrentAnimes() async {
    savedAnimes = await hiveService.getAllAnimes();
  }

  @action
  insertAnime(Anime anime) {
    savedAnimes.add(anime);
    hiveService.insertAnime(anime);
  }
}
