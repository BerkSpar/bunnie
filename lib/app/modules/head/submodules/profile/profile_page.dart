import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/app_controller.dart';
import 'package:rabbited/app/widgets/post_card/post_card.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  final app = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 32),
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
            SizedBox(height: 16),
            Text(
              app.user.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '@${app.user.username}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.edit),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.settings),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
        Divider(
          endIndent: 16,
          indent: 16,
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Recent Watched',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        SizedBox(height: 8),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16),
          physics: ScrollPhysics(),
          itemCount: store.animes.length + 1,
          itemBuilder: (_, index) {
            if (index == store.animes.length) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              );
            }

            final anime = store.animes[index];

            return RoundedImage(
              height: double.maxFinite,
              width: double.maxFinite,
              borderRadius: BorderRadius.circular(8),
              imageUrl: anime.coverImage.extraLarge,
            );
          },
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'My Posts',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        SizedBox(height: 8),
        ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 14),
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: store.posts.length,
          itemBuilder: (_, index) {
            final post = store.posts[index];

            return PostCard(
              post: post,
            );
          },
        )
      ],
    );
  }
}
