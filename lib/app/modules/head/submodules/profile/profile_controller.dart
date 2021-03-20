import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/cover_image.dart';
import 'package:rabbited/app/shared/models/post.dart';
import 'package:rabbited/app/shared/models/user.dart';

part 'profile_controller.g.dart';

@Injectable()
class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  List<Anime> animes = <Anime>[
    Anime(
      name: 'Pokémon',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b527-cFxpkJI4026c.png',
      ),
    ),
    Anime(
      name: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx20613-JpRbnstIj6PO.png',
      ),
    ),
    Anime(
      name: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/21064-HchJJfkPjq1P.jpg',
      ),
    ),
    Anime(
      name: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx106286-5COcpd0J9VbL.png',
      ),
    ),
    Anime(
      name: 'Pokémon',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b527-cFxpkJI4026c.png',
      ),
    ),
    Anime(
      name: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx20613-JpRbnstIj6PO.png',
      ),
    ),
    Anime(
      name: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/21064-HchJJfkPjq1P.jpg',
      ),
    ),
    Anime(
      name: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx106286-5COcpd0J9VbL.png',
      ),
    ),
    Anime(
      name: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx106286-5COcpd0J9VbL.png',
      ),
    ),
  ];

  List<Post> posts = <Post>[
    Post(
      user: User(
        name: 'Felipe Passos',
        profilePhoto:
            'https://avatars3.githubusercontent.com/u/47111228?s=460&u=2d077bf84376e754ef2ae90d879521f6d5a453ba&v=4',
        username: 'berkspar',
      ),
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dolor risus, placerat sed scelerisque nec, iaculis eget lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus aliquam sem, sed congue nisl vehicula et.',
      imageUrl:
          'https://media2.giphy.com/media/fSvqyvXn1M3btN8sDh/giphy.gif?cid=ecf05e47muxb2zyibhamvb8pbqlmejlusbibdmpt2nrvporo&rid=giphy.gif',
    ),
    Post(
      user: User(
        name: 'Felipe Passos',
        profilePhoto:
            'https://avatars3.githubusercontent.com/u/47111228?s=460&u=2d077bf84376e754ef2ae90d879521f6d5a453ba&v=4',
        username: 'berkspar',
      ),
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dolor risus, placerat sed scelerisque nec, iaculis eget lectus.',
    ),
  ];
}
