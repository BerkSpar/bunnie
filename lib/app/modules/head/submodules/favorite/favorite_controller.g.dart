// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoriteController on _FavoriteControllerBase, Store {
  late final _$collectionsAtom =
      Atom(name: '_FavoriteControllerBase.collections', context: context);

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

  late final _$entriesAtom =
      Atom(name: '_FavoriteControllerBase.entries', context: context);

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

  late final _$getCollectionsAsyncAction =
      AsyncAction('_FavoriteControllerBase.getCollections', context: context);

  @override
  Future getCollections() {
    return _$getCollectionsAsyncAction.run(() => super.getCollections());
  }

  late final _$getEntriesAsyncAction =
      AsyncAction('_FavoriteControllerBase.getEntries', context: context);

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
