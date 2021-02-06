import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/collection.dart';
import 'package:rabbited/app/shared/models/cover_image.dart';
import 'package:rabbited/app/shared/models/explore_list.dart';

part 'explore_controller.g.dart';

@Injectable()
class ExploreController = _ExploreControllerBase with _$ExploreController;

abstract class _ExploreControllerBase with Store {
  List<ExploreList> animeLists = <ExploreList>[
    ExploreList(
      name: 'Action Animes',
      exploreListType: ExploreListType.anime,
      itens: <Anime>[
        Anime(
          title: 'Naruto',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx20-KCjCtnUTsLcu.jpg',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
      ],
    ),
    ExploreList(
      name: 'Action Animes',
      exploreListType: ExploreListType.anime,
      itens: <Anime>[
        Anime(
          title: 'Naruto',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx20-KCjCtnUTsLcu.jpg',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
      ],
    ),
    ExploreList(
      name: 'Action Animes',
      exploreListType: ExploreListType.anime,
      itens: <Anime>[
        Anime(
          title: 'Naruto',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/nx20-KCjCtnUTsLcu.jpg',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
        Anime(
          title: 'Pokémon',
          coverImage: CoverImage(
            medium:
                'https://s4.anilist.co/file/anilistcdn/media/anime/cover/small/b527-cFxpkJI4026c.png',
          ),
        ),
      ],
    ),
  ];

  List<ExploreList> collectionLists = <ExploreList>[
    ExploreList(
      exploreListType: ExploreListType.collection,
      name: 'Action',
      itens: <Collection>[
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/527-69bO9vmmewWm.jpg',
          name: 'Pokémon',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20502-pYbTtit95IYv.jpg',
          name: 'Cute',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/21519-1ayMXgNlmByb.jpg',
          name: 'Films',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZhKBUDDS6L.jpg',
          name: 'Romance',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/527-69bO9vmmewWm.jpg',
          name: 'Pokémon',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20502-pYbTtit95IYv.jpg',
          name: 'Cute',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/21519-1ayMXgNlmByb.jpg',
          name: 'Films',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZhKBUDDS6L.jpg',
          name: 'Romance',
        ),
      ],
    ),
    ExploreList(
      exploreListType: ExploreListType.collection,
      name: 'Action',
      itens: <Collection>[
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/527-69bO9vmmewWm.jpg',
          name: 'Pokémon',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20502-pYbTtit95IYv.jpg',
          name: 'Cute',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/21519-1ayMXgNlmByb.jpg',
          name: 'Films',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZhKBUDDS6L.jpg',
          name: 'Romance',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/527-69bO9vmmewWm.jpg',
          name: 'Pokémon',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20502-pYbTtit95IYv.jpg',
          name: 'Cute',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/21519-1ayMXgNlmByb.jpg',
          name: 'Films',
        ),
        Collection(
          imageUrl:
              'https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZhKBUDDS6L.jpg',
          name: 'Romance',
        ),
      ],
    ),
  ];
}
