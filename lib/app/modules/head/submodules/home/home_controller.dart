import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/post.dart';
import 'package:rabbited/app/shared/models/user.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  List<Post> posts = <Post>[
    Post(
      user: User(
        name: 'Felipe Passos',
        profilePhoto:
            'https://avatars3.githubusercontent.com/u/47111228?s=460&u=2d077bf84376e754ef2ae90d879521f6d5a453ba&v=4',
        username: 'berkspar',
      ),
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dolor risus, placerat sed scelerisque nec, iaculis eget lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rhoncus aliquam sem, sed congue nisl vehicula et.',
      imageUrl:
          'https://media2.giphy.com/media/fSvqyvXn1M3btN8sDh/giphy.gif?cid=ecf05e47muxb2zyibhamvb8pbqlmejlusbibdmpt2nrvporo&rid=giphy.gif',
    ),
    Post(
      user: User(
        name: 'Bruno Assis',
        profilePhoto:
            'https://avatars2.githubusercontent.com/u/53619830?s=460&u=9809495b28fe821a29996d7b65b0091723fe95ad&v=4',
        username: 'sklorde',
      ),
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dolor risus, placerat sed scelerisque nec, iaculis eget lectus.',
      imageUrl: 'https://media.giphy.com/media/GRSnxyhJnPsaQy9YLn/giphy.gif',
    ),
    Post(
      user: User(
        name: 'Felipe Passos',
        profilePhoto:
            'https://avatars3.githubusercontent.com/u/47111228?s=460&u=2d077bf84376e754ef2ae90d879521f6d5a453ba&v=4',
        username: 'berkspar',
      ),
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dolor risus, placerat sed scelerisque nec, iaculis eget lectus.',
    ),
    Post(
      user: User(
        name: 'Bruno Assis',
        profilePhoto:
            'https://avatars2.githubusercontent.com/u/53619830?s=460&u=9809495b28fe821a29996d7b65b0091723fe95ad&v=4',
        username: 'sklorde',
      ),
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dolor risus, placerat sed scelerisque nec, iaculis eget lectus.',
      imageUrl:
          'https://3.bp.blogspot.com/--MO4NQPSLSI/XYEVx4m8DAI/AAAAAAAAAY4/kFDWNVz5EP8R5ENFjy44KUN8Ac6Y5kZUgCK4BGAYYCw/s1600/Shingeki-no-Kyojin.jpg',
    ),
  ];
}
