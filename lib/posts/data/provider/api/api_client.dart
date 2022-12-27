import 'package:dio/dio.dart';
import 'package:hoshmand_test/core/core.dart';
import 'package:hoshmand_test/posts/data/model/posts/posts.dart';
import 'package:hoshmand_test/posts/data/provider/api/api_client_helper.dart';

class Api {
  static const String base = 'https://jsonplaceholder.typicode.com/';
  static const String posts = 'posts';
}

class ApiClient with ApiClientHelper {
  Future<Posts> getPosts() async {
    try {
      final result = await dio.get(Api.posts);
      return result.data.map<Posts>((e) => Posts.fromJson(e)).toList();
    } on DioError catch (e) {
      throw DataException.fromDioError(e);
    }
  }
}
