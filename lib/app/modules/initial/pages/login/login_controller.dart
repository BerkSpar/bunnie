import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/app_controller.dart';
import 'package:rabbited/app/shared/models/user.dart';
import 'package:rabbited/app/shared/repositories/bunnie_api_repository.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final api = Modular.get<BunnieApiRepository>();
  final app = Modular.get<AppController>();

  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @action
  login() async {
    User user = User(
      username: usernameCtrl.text,
      password: passwordCtrl.text,
    );

    user = await api.signIn(user);

    if (user != null) {
      app.user = user;

      Modular.to.pushReplacementNamed('/app');
    }
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
