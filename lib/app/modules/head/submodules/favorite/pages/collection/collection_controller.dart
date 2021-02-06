import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/collection.dart';
import 'package:rabbited/app/shared/repositories/bunnie_api_repository.dart';

part 'collection_controller.g.dart';

@Injectable()
class CollectionController = _CollectionControllerBase
    with _$CollectionController;

abstract class _CollectionControllerBase with Store {
  final api = Modular.get<BunnieApiRepository>();

  @observable
  bool isLoading = false;

  Collection collection;

  init(String id) async {
    isLoading = true;
    final result = await api.getCollection(id);

    if (result.isRight()) {
      collection = result.getOrElse(null);
      isLoading = false;
    } else {
      asuka.showSnackBar(SnackBar(
        content: Text('Occur an error when try to get its collection'),
      ));
    }
  }
}
