import 'package:dio/dio.dart';
import 'package:hoshmand_test/posts/data/provider/api/api_client.dart';

mixin ApiClientHelper {
  Dio get dio => Dio(BaseOptions(
        connectTimeout: 8000,
        sendTimeout: 8000,
        receiveTimeout: 8000,
        baseUrl: Api.base,
      ));
}
