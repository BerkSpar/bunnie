// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_delegate_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchDelegateController on _SearchDelegateControllerBase, Store {
  final _$animesPesquisaAtom =
      Atom(name: '_SearchDelegateControllerBase.animesPesquisa');

  @override
  List<Anime> get animesPesquisa {
    _$animesPesquisaAtom.reportRead();
    return super.animesPesquisa;
  }

  @override
  set animesPesquisa(List<Anime> value) {
    _$animesPesquisaAtom.reportWrite(value, super.animesPesquisa, () {
      super.animesPesquisa = value;
    });
  }

  final _$userAtom = Atom(name: '_SearchDelegateControllerBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$searchAnimeAsyncAction =
      AsyncAction('_SearchDelegateControllerBase.searchAnime');

  @override
  Future searchAnime(String search) {
    return _$searchAnimeAsyncAction.run(() => super.searchAnime(search));
  }

  final _$_SearchDelegateControllerBaseActionController =
      ActionController(name: '_SearchDelegateControllerBase');

  @override
  dynamic switchFinished(bool value) {
    final _$actionInfo = _$_SearchDelegateControllerBaseActionController
        .startAction(name: '_SearchDelegateControllerBase.switchFinished');
    try {
      return super.switchFinished(value);
    } finally {
      _$_SearchDelegateControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
animesPesquisa: ${animesPesquisa},
user: ${user}
    ''';
  }
}
