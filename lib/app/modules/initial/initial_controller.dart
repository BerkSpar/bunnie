import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'initial_controller.g.dart';

@Injectable()
class InitialController = _InitialControllerBase with _$InitialController;

abstract class _InitialControllerBase with Store {
  @observable
  double opacity = 0;

  @observable
  double width = 0;

  _InitialControllerBase() {
    _init();
  }

  _init() async {
    final minTime = Future.delayed(Duration(seconds: 2));

    //Lógica de login
    final isLogged = false;

    await minTime;

    opacity = 1;
    width = 100;

    await Future.delayed(Duration(milliseconds: 1200));

    if (isLogged) {
      Modular.to.navigate(
        '/head',
        replaceAll: true,
      );
    } else {
      Modular.to.navigate('/login');
    }
  }
}
