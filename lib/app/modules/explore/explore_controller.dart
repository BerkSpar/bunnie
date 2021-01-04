import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'explore_controller.g.dart';

@Injectable()
class ExploreController = _ExploreControllerBase with _$ExploreController;

abstract class _ExploreControllerBase with Store {}
