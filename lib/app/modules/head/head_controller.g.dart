// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HeadController = BindInject(
  (i) => HeadController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HeadController on _HeadControllerBase, Store {
  final _$fabIconAtom = Atom(name: '_HeadControllerBase.fabIcon');

  @override
  Icon get fabIcon {
    _$fabIconAtom.reportRead();
    return super.fabIcon;
  }

  @override
  set fabIcon(Icon value) {
    _$fabIconAtom.reportWrite(value, super.fabIcon, () {
      super.fabIcon = value;
    });
  }

  @override
  String toString() {
    return '''
fabIcon: ${fabIcon}
    ''';
  }
}
