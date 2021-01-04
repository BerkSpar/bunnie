import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final pageController = PageController();

  int get page => pageController.page?.round() ?? 0;

  switchPage(int index) {
    pageController.jumpToPage(index);
  }
}
