import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/user.dart';
import 'package:rabbited/app/utils/links.dart';

part 'bunnie_api_repository.g.dart';

@Injectable()
class BunnieApiRepository extends Disposable {
  Dio client = Dio();
  String _token;
  BaseOptions options = BaseOptions(
    baseUrl: bunnie_api_url,
  );

  set token(String token) => _token = token;

  BunnieApiRepository() {
    client.options = options;
  }

  Future<Either<Exception, User>> signIn(User user) async {
    try {
      final response = await client.post('/user/signin', data: {
        "username": user.username,
        "password": user.password,
      });

      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }
    } catch (e) {
      return Left(e);
    }
  }

  @override
  void dispose() {}
}
