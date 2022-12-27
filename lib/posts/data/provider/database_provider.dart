import 'package:hoshmand_test/posts/data/provider/db/dao/posts_dao.dart';
import 'package:injectable/injectable.dart';

import 'db/table/posts_table.dart';

@lazySingleton
class DatabaseProvider {
  final PostDao _dao;

  DatabaseProvider(this._dao);

  List<PostsTable> getAllPosts() => _dao.getAllPosts();

  Future<void> updatePosts(List<PostsTable> posts) => _dao.updatePosts(posts);
}
