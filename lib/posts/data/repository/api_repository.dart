
import 'package:hoshmand_test/posts/data/model/posts_model/posts_model.dart';
import 'package:hoshmand_test/posts/data/provider/api_provider.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiRepository {
  final ApiProvider _provider;

  ApiRepository(this._provider);

  Future<PostsModel> getPosts() => _provider.getPosts();
}
