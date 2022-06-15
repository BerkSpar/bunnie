import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bunnie/app/widgets/post_card/post_card.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
      itemCount: controller.posts.length,
      itemBuilder: (_, index) {
        final post = controller.posts[index];

        return PostCard(
          post: post,
        );
      },
    );
  }
}
