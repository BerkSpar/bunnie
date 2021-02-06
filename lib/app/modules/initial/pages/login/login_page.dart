import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rabbited/app/utils/animations/fade_animation.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              BunnieColors.secundary,
              BunnieColors.main,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 64),
            FadeAnimation(
              1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Bunnie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            FadeAnimation(
              1.3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: SingleChildScrollView(
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 32),
                        FadeAnimation(
                          1.4,
                          child: TextFormField(
                            controller: controller.usernameCtrl,
                            decoration: InputDecoration(
                              hintText: 'Username',
                              filled: true,
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'You need to type a user';
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 8),
                        FadeAnimation(
                          1.5,
                          child: TextFormField(
                            controller: controller.passwordCtrl,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              filled: true,
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'You need to type a password';
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 16),
                        FadeAnimation(
                          1.6,
                          child: GestureDetector(
                            onTap: controller.recovery,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                'Forgot your password?',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        FadeAnimation(
                          1.7,
                          child: Container(
                            height: 48,
                            width: double.maxFinite,
                            child: ArgonButton(
                              height: 48,
                              width: double.maxFinite,
                              borderRadius: 8,
                              color: BunnieColors.main.withGreen(130),
                              onTap: controller.login,
                              elevation: 0,
                              loader: SpinKitFadingCircle(
                                color: Colors.white,
                                size: 24,
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 32),
                        FadeAnimation(
                          1.8,
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  endIndent: 16,
                                  indent: 8,
                                  thickness: 2,
                                ),
                              ),
                              Text(
                                'Othar ways to login',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  endIndent: 8,
                                  indent: 16,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Expanded(
                              child: FadeAnimation(
                                1.8,
                                child: Container(
                                  height: 48,
                                  child: OutlineButton(
                                    onPressed: controller.loginWithGoogle,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.google,
                                          color: Colors.redAccent,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Google',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: FadeAnimation(
                                1.8,
                                child: Container(
                                  height: 48,
                                  child: OutlineButton(
                                    onPressed: controller.loginWithFacebook,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.facebook,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Facebook',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        FadeAnimation(
                          1.9,
                          child: Container(
                            height: 48,
                            width: double.maxFinite,
                            child: OutlineButton(
                              onPressed: controller.register,
                              child: Text(
                                'Create an Account',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
