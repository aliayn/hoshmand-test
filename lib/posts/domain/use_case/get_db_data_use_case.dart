import 'package:dartz/dartz.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDBDataUseCase extends BaseUseCase<List<Posts>, NoParams> {
  final Repository _repository;

  GetDBDataUseCase(this._repository);
  @override
  Future<Either<Failure, List<Posts>>> call(NoParams param) {
    return _repository.getDBData();
  }
}
