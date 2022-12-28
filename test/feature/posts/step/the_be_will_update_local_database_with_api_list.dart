import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:mockito/mockito.dart';

import 'the_be_will_respond_with_posts_list_from_internet.dart';

Future<void> theBeWillUpdateLocalDatabaseWithApiList(WidgetTester tester) async {
  final repository = getIt.get<Repository>();
  when(repository.updateDBData(posts)).thenAnswer((realInvocation) => Future.value(left(const Failure('error'))));
}
