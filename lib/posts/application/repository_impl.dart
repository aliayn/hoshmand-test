import 'package:hoshmand_test/core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:hoshmand_test/posts/application/api_service.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl extends Repository {
  final ApiService _apiService;

  RepositoryImpl(this._apiService);

  @override
  Future<Either<Failure, List<Posts>>> getApiData() async {
    try {
      final posts = await _apiService.getPosts();
      return Right(posts.map<Posts>((e) => Posts(userId: e.userId, id: e.id, title: e.title, body: e.body)).toList());
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Posts>>> getDBData() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateDBData(List<Posts> posts) {
    throw UnimplementedError();
  }
}
