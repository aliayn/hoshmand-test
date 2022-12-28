import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/application/repository_impl.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';

import 'injection_helper.mocks.dart';

@GenerateMocks([RepositoryImpl])
void setupInjection() {
  configureDependencies(Environment.test);
  getIt.registerLazySingleton<Repository>(() => MockRepositoryImpl());
}
