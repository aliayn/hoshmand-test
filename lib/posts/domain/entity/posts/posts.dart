import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class Posts with _$Posts {
  factory Posts({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) = _Posts;
}
