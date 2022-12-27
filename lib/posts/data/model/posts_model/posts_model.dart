import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_model.freezed.dart';
part 'posts_model.g.dart';

@freezed
class PostsModel with _$PostsModel {
  factory PostsModel({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) = _PostsModel;

  factory PostsModel.fromJson(Map<String, dynamic> json) =>
      _$PostsModelFromJson(json);
}
