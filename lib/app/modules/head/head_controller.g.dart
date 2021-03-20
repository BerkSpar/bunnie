// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HeadController on _HeadControllerBase, Store {
  final _$indexAtom = Atom(name: '_HeadControllerBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$_HeadControllerBaseActionController =
      ActionController(name: '_HeadControllerBase');

  @override
  dynamic switchPage(int id) {
    final _$actionInfo = _$_HeadControllerBaseActionController.startAction(
        name: '_HeadControllerBase.switchPage');
    try {
      return super.switchPage(id);
    } finally {
      _$_HeadControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index}
    ''';
  }
}
