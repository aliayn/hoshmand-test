import 'package:hoshmand_test/core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:hoshmand_test/posts/application/api_service.dart';
import 'package:hoshmand_test/posts/application/database_service.dart';
import 'package:hoshmand_test/posts/data/provider/db/table/posts_table.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: Repository)
class RepositoryImpl extends Repository {
  final ApiService _apiService;
  final DatabaseService _databaseService;

  RepositoryImpl(this._apiService, this._databaseService);

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
  Future<Either<Failure, List<Posts>>> getDBData() async {
    try {
      final posts = _databaseService.getAllPosts();
      return Right(posts.map<Posts>((e) => Posts(userId: e.userId, id: e.id, title: e.title, body: e.body)).toList());
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateDBData(List<Posts> posts) async {
    try {
      return Right(_databaseService.updatePosts(
          posts.map((e) => PostsTable(userId: e.userId, id: e.id, title: e.title, body: e.body)).toList()));
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
