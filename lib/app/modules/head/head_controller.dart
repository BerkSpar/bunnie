import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'head_controller.g.dart';

@Injectable()
class HeadController = _HeadControllerBase with _$HeadController;

abstract class _HeadControllerBase with Store {
  final pageController = PageController();

  int get page => pageController.page?.round() ?? 0;

  switchPage(int index) {
    pageController.jumpToPage(index);
  }
}
