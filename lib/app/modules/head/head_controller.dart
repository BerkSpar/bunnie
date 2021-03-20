import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'head_controller.g.dart';

@Injectable()
class HeadController = _HeadControllerBase with _$HeadController;

abstract class _HeadControllerBase with Store {
  @observable
  int index = 0;

  _HeadControllerBase() {
    Modular.to.navigate('app/home');
  }

  @action
  switchPage(int id) {
    index = id;

    if (id == 0) {
      Modular.to.navigate('/app/head/home/');
    } else if (id == 1) {
      Modular.to.navigate('/app/head/explore/');
    } else if (id == 2) {
      Modular.to.navigate('/app/head/favorite/');
    } else if (id == 3) {
      Modular.to.navigate('/app/head/profile/');
    }
  }
}
