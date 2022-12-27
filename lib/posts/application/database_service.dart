import 'package:hoshmand_test/posts/data/provider/db/table/posts_table.dart';
import 'package:hoshmand_test/posts/data/repository/database_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DatabaseService {
  final DataBaseRepository _repository;

  DatabaseService(this._repository);

  List<PostsTable> getAllPosts() => _repository.getAllPosts();

  Future<void> updatePosts(List<PostsTable> posts) => _repository.updatePosts(posts);
}
