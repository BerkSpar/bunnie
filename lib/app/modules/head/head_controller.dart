import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'head_controller.g.dart';

@Injectable()
class HeadController = _HeadControllerBase with _$HeadController;

abstract class _HeadControllerBase with Store {
  @observable
  int index = 0;

  _HeadControllerBase() {
    Modular.to.navigate('home');
  }

  @action
  switchPage(int index) {
    switch (index) {
      case 0:
        Modular.to.navigate('/home/home');
        break;
      case 1:
        Modular.to.navigate('/home/explore/');
        break;
      case 2:
        Modular.to.navigate('/home/favorite');
        break;
      case 3:
        Modular.to.navigate('/home/profile');
        break;
    }
  }
}
