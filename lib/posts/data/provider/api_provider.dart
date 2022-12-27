
import 'package:hoshmand_test/posts/data/model/posts_model/posts_model.dart';
import 'package:hoshmand_test/posts/data/provider/api/api_client.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiProvider {
  final ApiClient _client;

  ApiProvider(this._client);

  Future<PostsModel> getPosts() => _client.getPosts();
}
