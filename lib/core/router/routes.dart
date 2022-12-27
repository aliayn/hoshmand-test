
import 'package:get/get.dart';


abstract class Routes {
  static const main = '/';
}

abstract class AppPages {
  static String get initial => Routes.main;

  static final routes = <GetPage>[
    // GetPage(
    //   name: Routes.main,
    //   page: (() => const CustomerPage()),
    // ),
  ];
}
