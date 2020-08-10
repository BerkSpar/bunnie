// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimeController on _AnimeControllerBase, Store {
  Computed<Anime> _$animeComputed;

  @override
  Anime get anime => (_$animeComputed ??= Computed<Anime>(() => super.anime,
          name: '_AnimeControllerBase.anime'))
      .value;

  final _$_animeAtom = Atom(name: '_AnimeControllerBase._anime');

  @override
  Anime get _anime {
    _$_animeAtom.reportRead();
    return super._anime;
  }

  @override
  set _anime(Anime value) {
    _$_animeAtom.reportWrite(value, super._anime, () {
      super._anime = value;
    });
  }

  final _$getAnimeAsyncAction = AsyncAction('_AnimeControllerBase.getAnime');

  @override
  Future getAnime(int animeId) {
    return _$getAnimeAsyncAction.run(() => super.getAnime(animeId));
  }

  @override
  String toString() {
    return '''
anime: ${anime}
    ''';
  }
}
