import 'package:dartz/dartz.dart';
import 'package:hoshmand_test/core/utils/failure.dart';

abstract class BaseUseCase<T, P> {
  Future<Either<Failure, T>> call(P param);
}

class NoParams {}
