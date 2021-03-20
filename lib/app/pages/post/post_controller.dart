import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'post_controller.g.dart';

@Injectable()
class PostController = _PostControllerBase with _$PostController;

abstract class _PostControllerBase with Store {
  onShare() {}
}
