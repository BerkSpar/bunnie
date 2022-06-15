import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bunnie/app/utils/bunnie_colors.dart';
import 'post_controller.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final controller = Modular.get<PostController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
            ),
            const Text(
              'Bunnie',
              style: TextStyle(
                fontSize: 24,
                color: BunnieColors.main,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Create a new post',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Ask something, share your animes, be an otaku!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      maxLines: 8,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      maxLength: 255,
                      decoration: const InputDecoration(
                        hintText: 'Type something intersting',
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: controller.onShare,
                  child: const Text(
                    'Share',
                    style: TextStyle(
                      color: BunnieColors.main,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
