import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hoshmand_test/core/di/injection.dart';
import 'package:hoshmand_test/posts/data/provider/db/table/posts_table.dart';
import 'package:injectable/injectable.dart';

class AppService {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await Hive.initFlutter();
    Hive.registerAdapter(PostsTableAdapter());
    await Hive.openBox<PostsTable>('Posts');
    configureDependencies(Environment.prod);
  }
}
