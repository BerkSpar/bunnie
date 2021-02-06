// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $FavoriteController = BindInject(
  (i) => FavoriteController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteController on _FavoriteControllerBase, Store {
  final _$collectionsAtom = Atom(name: '_FavoriteControllerBase.collections');

  @override
  List<Collection> get collections {
    _$collectionsAtom.reportRead();
    return super.collections;
  }

  @override
  set collections(List<Collection> value) {
    _$collectionsAtom.reportWrite(value, super.collections, () {
      super.collections = value;
    });
  }

  final _$entriesAtom = Atom(name: '_FavoriteControllerBase.entries');

  @override
  List<Entry> get entries {
    _$entriesAtom.reportRead();
    return super.entries;
  }

  @override
  set entries(List<Entry> value) {
    _$entriesAtom.reportWrite(value, super.entries, () {
      super.entries = value;
    });
  }

  final _$getCollectionsAsyncAction =
      AsyncAction('_FavoriteControllerBase.getCollections');

  @override
  Future getCollections() {
    return _$getCollectionsAsyncAction.run(() => super.getCollections());
  }

  final _$getEntriesAsyncAction =
      AsyncAction('_FavoriteControllerBase.getEntries');

  @override
  Future getEntries() {
    return _$getEntriesAsyncAction.run(() => super.getEntries());
  }

  @override
  String toString() {
    return '''
collections: ${collections},
entries: ${entries}
    ''';
  }
}
