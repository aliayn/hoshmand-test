import 'package:get/get.dart';
import 'package:hoshmand_test/posts/posts.dart';

abstract class Routes {
  static const posts = '/posts';
}

abstract class AppPages {
  static String get initial => Routes.posts;

  static final routes = <GetPage>[
    GetPage(
      name: Routes.posts,
      page: (() => const PostsScreen()),
    ),
  ];
}
