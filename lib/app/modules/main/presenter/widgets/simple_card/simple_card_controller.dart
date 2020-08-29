import 'package:mobx/mobx.dart';

part 'simple_card_controller.g.dart';

class SimpleCardController = _SimpleCardControllerBase
    with _$SimpleCardController;

abstract class _SimpleCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
