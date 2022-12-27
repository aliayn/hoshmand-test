import 'package:dartz/dartz.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';

abstract class Repository {
  Future<Either<Failure, List<Posts>>> getDBData();

  Future<Either<Failure, List<Posts>>> getApiData();

  Future<Either<Failure, void>> updateDBData(List<Posts> posts);
}
