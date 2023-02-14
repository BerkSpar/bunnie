import 'package:asuka/asuka.dart';
import 'package:bunnie/app/app_controller.dart';
import 'package:bunnie/app/shared/models/user.dart';
import 'package:bunnie/app/shared/repositories/bunnie_api_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

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
  login() async {
    if (!(formKey.currentState?.validate() ?? false)) return;

    SystemChannels.textInput.invokeMethod('TextInput.hide');

    User user = User(
      username: usernameCtrl.text,
      password: passwordCtrl.text,
    );

    final result = await api.signIn(user);

    if (result.isRight()) {
      app.user = result.getOrElse(() => User());

      Modular.to.navigate('/app');
    } else {
      Asuka.showSnackBar(AsukaSnackbar.alert('You cannot login'));
    }
  }

  @action
  loginWithGoogle() {
    Modular.to.navigate('/app');
  }

  @action
  loginWithFacebook() {}

  @action
  register() {
    Modular.to.navigate('/register');
  }

  @action
  recovery() {}
}
