import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'entry_card_controller.g.dart';

@Injectable()
class EntryCardController = _EntryCardControllerBase with _$EntryCardController;

abstract class _EntryCardControllerBase with Store {}
