import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_test/core/di/injection.dart';
import 'package:hoshmand_test/posts/domain/entity/posts/posts.dart';
import 'package:hoshmand_test/posts/domain/repository/repository.dart';
import 'package:mockito/mockito.dart';

Future<void> theBeWillRespondWithPostsListFromInternet(WidgetTester tester) async {
  final repository = getIt.get<Repository>();
  when(repository.getApiData()).thenAnswer((realInvocation) => Future.value(right(posts)));
}

final posts = <Posts>[
  Posts(userId: 1, id: 0, title: 'title', body: 'body'),
  Posts(userId: 1, id: 1, title: 'title', body: 'body'),
  Posts(userId: 1, id: 2, title: 'title', body: 'body'),
  Posts(userId: 1, id: 3, title: 'title', body: 'body'),
  Posts(userId: 1, id: 4, title: 'title', body: 'body'),
  Posts(userId: 1, id: 5, title: 'title', body: 'body'),
  Posts(userId: 1, id: 6, title: 'title', body: 'body'),
];
