import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';

part 'profile_controller.g.dart';

@Injectable()
class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  List<Anime> animes = <Anime>[
    Anime(
      title: 'Pokémon',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b527-cFxpkJI4026c.png',
      ),
    ),
    Anime(
      title: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx20613-JpRbnstIj6PO.png',
      ),
    ),
    Anime(
      title: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/21064-HchJJfkPjq1P.jpg',
      ),
    ),
    Anime(
      title: 'Naruto',
      coverImage: CoverImage(
        extraLarge:
            'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx106286-5COcpd0J9VbL.png',
      ),
    ),
  ];
}
