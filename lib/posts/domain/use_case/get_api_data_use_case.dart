import 'package:dartz/dartz.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetApiDataUseCase extends BaseUseCase<List<Posts>, NoParams> {
  final Repository _repository;

  GetApiDataUseCase(this._repository);
  @override
  Future<Either<Failure, List<Posts>>> call(void param) {
    return _repository.getApiData();
  }
}
