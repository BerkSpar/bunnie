import 'package:asuka/asuka.dart';
import 'package:bunnie/app/shared/models/collection.dart';
import 'package:bunnie/app/shared/repositories/bunnie_api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'collection_controller.g.dart';

@Injectable()
class CollectionController = _CollectionControllerBase
    with _$CollectionController;

abstract class _CollectionControllerBase with Store {
  final api = Modular.get<BunnieApiRepository>();

  @observable
  bool isLoading = false;

  Collection? collection;

  init(String? id) async {
    if (id == null) return;

    isLoading = true;
    final result = await api.getCollection(id);

    if (result.isRight()) {
      collection = result.getOrElse((() => Collection()));
      isLoading = false;
    } else {
      Asuka.showSnackBar(const SnackBar(
        content: Text('Occur an error when try to get its collection'),
      ));
    }
  }
}
