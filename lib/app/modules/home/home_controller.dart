import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/collection.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  List<Collection> myCollections = <Collection>[
    Collection(
      name: 'Comédia',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.cdn.adultswim.com%2Fuploads%2F20191001%2F191011425589-OnePunchManSeason2_searchImage_.jpg&f=1&nofb=1',
    ),
    Collection(
      name: 'Ruins',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2FlnCfZzG2RPo%2Fmaxresdefault.jpg&f=1&nofb=1',
    ),
    Collection(
      name: 'Pokémon',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.pixelstalk.net%2Fwp-content%2Fuploads%2F2016%2F02%2FCool-Pokemon-Wallpapers-Free-download.jpg&f=1&nofb=1',
    ),
  ];

  List<Anime> explore = <Anime>[
    Anime(
      title: 'Naruto Shippuden',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.hdwallpaper.nu%2Fwp-content%2Fuploads%2F2015%2F10%2FNaruto_Shippuden_32.jpg&f=1&nofb=1',
    ),
    Anime(
      title: 'Akame Ga Kill',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fstatic.zerochan.net%2FAkame.ga.Kill!.full.1799891.jpg&f=1&nofb=1',
    ),
    Anime(
      title: 'Death Note',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fnextalerts.com%2Fwp-content%2Fuploads%2F2020%2F07%2Fdeath-note-perfume-1200470-1280x0-1.jpeg&f=1&nofb=1',
    ),
    Anime(
      title: 'Pokémon',
      imageUrl:
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic2.srcdn.com%2Fwordpress%2Fwp-content%2Fuploads%2F2019%2F05%2FPokemon-movie-cover.jpg&f=1&nofb=1',
    ),
  ];
}
