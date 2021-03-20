import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/collection.dart';
import 'package:rabbited/app/shared/models/entry.dart';
import 'package:rabbited/app/shared/models/user.dart';
import 'package:rabbited/app/utils/links.dart';

class BunnieApiRepository extends Disposable {
  Dio client = Dio();
  BaseOptions options = BaseOptions(
    baseUrl: bunnie_api_url,
  );

  set token(String token) {
    options.headers['x-access-token'] = token;
  }

  BunnieApiRepository() {
    client.options = options;
    client.options.responseType = ResponseType.json;
  }

  Future<Either<Exception, User>> signIn(User info) async {
    try {
      final response = await client.post('/user/signin', data: {
        "username": info.username,
        "password": info.password,
      });

      final user = User.fromJson(response.data);

      options.headers['x-access-token'] = user.token;

      return Right(user);
    } catch (e) {
      return Left(e);
    }
  }

  Future<Either<Exception, List<Collection>>> getCollections() async {
    try {
      final response = await client.get('/collections');

      List<Collection> collections = <Collection>[];

      response.data.forEach((collection) {
        collections.add(Collection.fromJson(collection));
      });

      return Right(collections);
    } catch (e) {
      return Left(e);
    }
  }

  Future<Either<Exception, List<Entry>>> getEntries() async {
    try {
      final response = await client.get('/entry');

      List<Entry> entries = <Entry>[];

      response.data.forEach((entry) {
        entries.add(Entry.fromJson(entry));
      });

      return Right(entries);
    } catch (e) {
      return Left(e);
    }
  }

  Future<Either<dynamic, Collection>> getCollection(String id) async {
    try {
      final response = await client.get('/collections/$id');

      final collection = Collection.fromJson(response.data);

      return Right(collection);
    } catch (e) {
      return Left(e);
    }
  }

  @override
  void dispose() {}
}
