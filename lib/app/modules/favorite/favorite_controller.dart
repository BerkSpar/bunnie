import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'favorite_controller.g.dart';

@Injectable()
class FavoriteController = _FavoriteControllerBase with _$FavoriteController;

abstract class _FavoriteControllerBase with Store {}
