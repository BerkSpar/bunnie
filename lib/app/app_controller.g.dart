// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$savedAnimesAtom = Atom(name: '_AppControllerBase.savedAnimes');

  @override
  List<Anime> get savedAnimes {
    _$savedAnimesAtom.reportRead();
    return super.savedAnimes;
  }

  @override
  set savedAnimes(List<Anime> value) {
    _$savedAnimesAtom.reportWrite(value, super.savedAnimes, () {
      super.savedAnimes = value;
    });
  }

  final _$getCurrentAnimesAsyncAction =
      AsyncAction('_AppControllerBase.getCurrentAnimes');

  @override
  Future getCurrentAnimes() {
    return _$getCurrentAnimesAsyncAction.run(() => super.getCurrentAnimes());
  }

  final _$_AppControllerBaseActionController =
      ActionController(name: '_AppControllerBase');

  @override
  dynamic insertAnime(Anime anime) {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction(
        name: '_AppControllerBase.insertAnime');
    try {
      return super.insertAnime(anime);
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
savedAnimes: ${savedAnimes}
    ''';
  }
}
