import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hoshmand_test/posts/data/provider/db/table/posts_table.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PostDao {
  
  final _box = Hive.box<PostsTable>('Posts');

  ValueListenable<Box<PostsTable>> listenable() => _box.listenable();

  List<PostsTable> getAllPosts() => _box.values.toList();

  Future<void> updatePosts(List<PostsTable> posts) => _box.putAll({for (var p in posts) p.id: p});
}
