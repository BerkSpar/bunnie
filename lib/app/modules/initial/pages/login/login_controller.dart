import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/app_controller.dart';
import 'package:rabbited/app/shared/models/user.dart';
import 'package:rabbited/app/shared/repositories/bunnie_api_repository.dart';
import 'package:asuka/asuka.dart' as asuka;

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final api = Modular.get<BunnieApiRepository>();
  final app = Modular.get<AppController>();

  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @action
  login(startLoading, stopLoading, btnState) async {
    if (btnState == ButtonState.Busy) return;

    if (!formKey.currentState.validate()) return;

    FocusScope.of(Modular.navigatorKey.currentContext).unfocus();

    User user = User(
      username: usernameCtrl.text,
      password: passwordCtrl.text,
    );

    startLoading();
    final result = await api.signIn(user);
    stopLoading();

    if (result.isRight()) {
      app.user = result.getOrElse(null);

      Modular.to.pushReplacementNamed('/app');
    } else {
      asuka.showSnackBar(SnackBar(
        content: Text('You cannot login'),
      ));
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
