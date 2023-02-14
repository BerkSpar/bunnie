import 'package:bunnie/app/app_controller.dart';
import 'package:bunnie/app/widgets/post_card/post_card.dart';
import 'package:bunnie/app/widgets/rounded_image/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = Modular.get<ProfileController>();
  final app = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 32),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RoundedImage(
              height: 130,
              width: 130,
              borderRadius: BorderRadius.circular(90),
              imageUrl:
                  'https://avatars3.githubusercontent.com/u/47111228?s=460&u=2d077bf84376e754ef2ae90d879521f6d5a453ba&v=4',
            ),
            const SizedBox(height: 16),
            Text(
              app.user?.name ?? '',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '@${app.user?.username}',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.edit),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.settings),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
        const Divider(
          endIndent: 16,
          indent: 16,
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Recent Watched',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const SizedBox(height: 8),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          physics: const ScrollPhysics(),
          itemCount: controller.animes.length + 1,
          itemBuilder: (_, index) {
            if (index == controller.animes.length) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              );
            }

            final anime = controller.animes[index];

            return RoundedImage(
              height: double.maxFinite,
              width: double.maxFinite,
              borderRadius: BorderRadius.circular(8),
              imageUrl: anime.coverImage?.extraLarge ?? '',
            );
          },
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'My Posts',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        const SizedBox(height: 8),
        ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: controller.posts.length,
          itemBuilder: (_, index) {
            final post = controller.posts[index];

            return PostCard(
              post: post,
            );
          },
        )
      ],
    );
  }
}
