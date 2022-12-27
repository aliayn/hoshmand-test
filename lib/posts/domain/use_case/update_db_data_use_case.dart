import 'package:dartz/dartz.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateDBDataUseCase extends BaseUseCase<void, List<Posts>> {
  final Repository _repository;

  UpdateDBDataUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(List<Posts> param) {
    return _repository.updateDBData(param);
  }
}
