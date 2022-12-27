import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'posts_table.freezed.dart';
part 'posts_table.g.dart';

@freezed
@HiveType(typeId: 1)
class PostsTable with _$PostsTable {
  const factory PostsTable({
    @HiveField(0) int? userId,
    @HiveField(1) @Default(0) int id,
    @HiveField(2) String? title,
    @HiveField(3) String? body,
  }) = _PostsTable;
}
