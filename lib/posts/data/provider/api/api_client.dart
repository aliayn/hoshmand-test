import 'package:dio/dio.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/data/model/posts_model/posts_model.dart';
import 'package:hoshmand_test/posts/data/provider/api/api_client_helper.dart';
import 'package:injectable/injectable.dart';

class Api {
  static const String base = 'https://jsonplaceholder.typicode.com/';
  static const String posts = 'posts';
}

@lazySingleton
class ApiClient with ApiClientHelper {
  Future<PostsModel> getPosts() async {
    try {
      final result = await dio.get(Api.posts);
      return result.data.map<PostsModel>((e) => PostsModel.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DataException.fromDioError(e);
    }
  }
}
