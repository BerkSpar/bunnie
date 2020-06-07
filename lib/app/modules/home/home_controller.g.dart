// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$fabIconsAtom = Atom(name: '_HomeControllerBase.fabIcons');

  @override
  List<Icon> get fabIcons {
    _$fabIconsAtom.reportRead();
    return super.fabIcons;
  }

  @override
  set fabIcons(List<Icon> value) {
    _$fabIconsAtom.reportWrite(value, super.fabIcons, () {
      super.fabIcons = value;
    });
  }

  final _$tabIndexAtom = Atom(name: '_HomeControllerBase.tabIndex');

  @override
  int get tabIndex {
    _$tabIndexAtom.reportRead();
    return super.tabIndex;
  }

  @override
  set tabIndex(int value) {
    _$tabIndexAtom.reportWrite(value, super.tabIndex, () {
      super.tabIndex = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic switchTab(int value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.switchTab');
    try {
      return super.switchTab(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fabIcons: ${fabIcons},
tabIndex: ${tabIndex}
    ''';
  }
}
