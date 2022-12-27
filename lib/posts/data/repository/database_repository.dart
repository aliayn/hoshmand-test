import 'package:hoshmand_test/posts/data/provider/database_provider.dart';
import 'package:hoshmand_test/posts/data/provider/db/table/posts_table.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DataBaseRepository {
  final DatabaseProvider _provider;

  DataBaseRepository(this._provider);

  List<PostsTable> getAllPosts() => _provider.getAllPosts();

  Future<void> updatePosts(List<PostsTable> posts) => _provider.updatePosts(posts);
}
