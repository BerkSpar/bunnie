import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/user.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';
import 'package:rabbited/app/widgets/user_header/user_header.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        SizedBox(height: 32),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                UserHeader(
                  user: User(
                    name: 'Felipe Passos',
                    photoUrl:
                        'https://avatars3.githubusercontent.com/u/47111228?s=460&u=2d077bf84376e754ef2ae90d879521f6d5a453ba&v=4',
                    username: 'berkspar',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
