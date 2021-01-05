import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
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
              'Felipe Passos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '@berkspar',
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
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.black54,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Editar Perfil',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.black54,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Compartilhar',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
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
              crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16),
          physics: ScrollPhysics(),
          itemCount: controller.animes.length,
          itemBuilder: (_, index) {
            final anime = controller.animes[index];

            return RoundedImage(
              height: double.maxFinite,
              width: double.maxFinite,
              borderRadius: BorderRadius.circular(8),
              imageUrl: anime.coverImage.extraLarge,
            );
          },
        ),
      ],
    );
  }
}
