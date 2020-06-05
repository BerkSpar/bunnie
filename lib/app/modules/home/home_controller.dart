import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/modules/home/tabs/list/list_widget.dart';
import 'package:rabbited/app/modules/home/tabs/search/search_widget.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  List<Icon> fabIcons = [
    Icon(Icons.add),
    Icon(Icons.search),
  ];

  @observable
  List<Widget> tabs = [
    ListWidget(),
    SearchWidget(),
  ];

  @observable
  int tabIndex = 0;

  @action
  switchTab(int value) {
    tabIndex = value;
  }
}
