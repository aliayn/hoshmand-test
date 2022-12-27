import 'package:hoshmand_test/posts/data/model/posts_model/posts_model.dart';
import 'package:hoshmand_test/posts/data/repository/api_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final ApiRepository _repository;

  ApiService(this._repository);

  Future<List<PostsModel>> getPosts() => _repository.getPosts();
}
