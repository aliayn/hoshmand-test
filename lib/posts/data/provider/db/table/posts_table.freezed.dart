// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsTable {
  @HiveField(0)
  int? get userId => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsTableCopyWith<PostsTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsTableCopyWith<$Res> {
  factory $PostsTableCopyWith(
          PostsTable value, $Res Function(PostsTable) then) =
      _$PostsTableCopyWithImpl<$Res, PostsTable>;
  @useResult
  $Res call(
      {@HiveField(0) int? userId,
      @HiveField(1) int? id,
      @HiveField(2) String? title,
      @HiveField(3) String? body});
}

/// @nodoc
class _$PostsTableCopyWithImpl<$Res, $Val extends PostsTable>
    implements $PostsTableCopyWith<$Res> {
  _$PostsTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsTableCopyWith<$Res>
    implements $PostsTableCopyWith<$Res> {
  factory _$$_PostsTableCopyWith(
          _$_PostsTable value, $Res Function(_$_PostsTable) then) =
      __$$_PostsTableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? userId,
      @HiveField(1) int? id,
      @HiveField(2) String? title,
      @HiveField(3) String? body});
}

/// @nodoc
class __$$_PostsTableCopyWithImpl<$Res>
    extends _$PostsTableCopyWithImpl<$Res, _$_PostsTable>
    implements _$$_PostsTableCopyWith<$Res> {
  __$$_PostsTableCopyWithImpl(
      _$_PostsTable _value, $Res Function(_$_PostsTable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_PostsTable(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostsTable implements _PostsTable {
  const _$_PostsTable(
      {@HiveField(0) this.userId,
      @HiveField(1) this.id = 0,
      @HiveField(2) this.title,
      @HiveField(3) this.body});

  @override
  @HiveField(0)
  final int? userId;
  @override
  @JsonKey()
  @HiveField(1)
  final int? id;
  @override
  @HiveField(2)
  final String? title;
  @override
  @HiveField(3)
  final String? body;

  @override
  String toString() {
    return 'PostsTable(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsTable &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsTableCopyWith<_$_PostsTable> get copyWith =>
      __$$_PostsTableCopyWithImpl<_$_PostsTable>(this, _$identity);
}

abstract class _PostsTable implements PostsTable {
  const factory _PostsTable(
      {@HiveField(0) final int? userId,
      @HiveField(1) final int? id,
      @HiveField(2) final String? title,
      @HiveField(3) final String? body}) = _$_PostsTable;

  @override
  @HiveField(0)
  int? get userId;
  @override
  @HiveField(1)
  int? get id;
  @override
  @HiveField(2)
  String? get title;
  @override
  @HiveField(3)
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostsTableCopyWith<_$_PostsTable> get copyWith =>
      throw _privateConstructorUsedError;
}
