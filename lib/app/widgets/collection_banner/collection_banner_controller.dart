import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'collection_banner_controller.g.dart';

@Injectable()
class CollectionBannerController = _CollectionBannerControllerBase
    with _$CollectionBannerController;

abstract class _CollectionBannerControllerBase with Store {}
