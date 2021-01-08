import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @action
  login() {
    Modular.to.pushReplacementNamed('/app');
  }

  @action
  loginWithGoogle() {
    Modular.to.pushReplacementNamed('/app');
  }

  @action
  loginWithFacebook() {
    Modular.to.pushReplacementNamed('/app');
  }

  @action
  register() {
    Modular.to.pushNamed('/register');
  }

  @action
  recovery() {}
}
