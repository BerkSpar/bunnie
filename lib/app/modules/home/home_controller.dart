import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  List<Icon> fabIcons = [
    Icon(Icons.add),
    Icon(Icons.search),
  ];

  @observable
  int tabIndex = 0;

  @action
  switchTab(int value) {
    tabIndex = value;
  }
}
