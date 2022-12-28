import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_test/core/di/injection.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:mockito/mockito.dart';

Future<void> theBeWillRespondWithEmptyPostsListFromLocal(WidgetTester tester) async {
  final repository = getIt.get<Repository>();
  when(repository.getDBData()).thenAnswer((realInvocation) => Future.value(right(<Posts>[])));
}
