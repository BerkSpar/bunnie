import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/collection.dart';
import 'package:rabbited/app/shared/models/entry.dart';

part 'favorite_controller.g.dart';

@Injectable()
class FavoriteController = _FavoriteControllerBase with _$FavoriteController;

abstract class _FavoriteControllerBase with Store {
  List<Collection> collections = <Collection>[
    Collection(
      imageUrl:
          'https://s4.anilist.co/file/anilistcdn/media/anime/banner/527-69bO9vmmewWm.jpg',
      title: 'Pokémon',
    ),
    Collection(
      imageUrl:
          'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20502-pYbTtit95IYv.jpg',
      title: 'Cute',
    ),
    Collection(
      imageUrl:
          'https://s4.anilist.co/file/anilistcdn/media/anime/banner/21519-1ayMXgNlmByb.jpg',
      title: 'Films',
    ),
    Collection(
      imageUrl:
          'https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZhKBUDDS6L.jpg',
      title: 'Romance',
    ),
  ];

  List<Entry> entries = <Entry>[
    Entry(
      anime: Anime(
        title: 'Tokyo Ghoul',
        coverImage: CoverImage(
          medium:
              'https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/nx63327-VpmcwQGbXZh5.jpg',
        ),
        episodes: 12,
      ),
      currentEpisode: 4,
    ),
    Entry(
      anime: Anime(
        title: 'Naruto',
        coverImage: CoverImage(
          medium:
              'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx20-KCjCtnUTsLcu.jpg',
        ),
        episodes: 220,
      ),
      currentEpisode: 41,
    ),
    Entry(
      anime: Anime(
        title: 'Pokémon',
        coverImage: CoverImage(
          medium:
              'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
        ),
        episodes: 320,
      ),
      currentEpisode: 28,
    ),
    Entry(
      anime: Anime(
        title: 'Dragon Ball',
        coverImage: CoverImage(
          medium:
              'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/bx223-Ld6vrSnd081L.png',
        ),
        episodes: 153,
      ),
      currentEpisode: 59,
    ),
    Entry(
      anime: Anime(
        title: 'Digimon',
        coverImage: CoverImage(
          medium:
              'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/2123-SYK0MA0T7Huy.png',
        ),
        episodes: 153,
      ),
      currentEpisode: 59,
    ),
  ];
}
