// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_anime_delegate_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchAnimeDelegateController
    on _SearchAnimeDelegateControllerBase, Store {
  final _$animeListAtom =
      Atom(name: '_SearchAnimeDelegateControllerBase.animeList');

  @override
  ObservableList<AnimeResult> get animeList {
    _$animeListAtom.reportRead();
    return super.animeList;
  }

  @override
  set animeList(ObservableList<AnimeResult> value) {
    _$animeListAtom.reportWrite(value, super.animeList, () {
      super.animeList = value;
    });
  }

  final _$searchAnimeAsyncAction =
      AsyncAction('_SearchAnimeDelegateControllerBase.searchAnime');

  @override
  Future searchAnime(String searchText) {
    return _$searchAnimeAsyncAction.run(() => super.searchAnime(searchText));
  }

  @override
  String toString() {
    return '''
animeList: ${animeList}
    ''';
  }
}
