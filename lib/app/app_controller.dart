import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/services/hive_service.dart';
import 'package:rabbited/app/shared/services/interface/localstorage_interface.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  ILocalStorage localStorage = Modular.get();

  @observable
  List<Anime> savedAnimes = List<Anime>();

  _AppControllerBase() {
    getCurrentAnimes();
    // localStorage.deleteAllAnimes();
  }

  @action
  getCurrentAnimes() async {
    savedAnimes = await localStorage.getAllAnimes();
  }

  @action
  insertAnime(Anime anime) {
    savedAnimes.add(anime);
    localStorage.insertAnime(anime);
  }
}
