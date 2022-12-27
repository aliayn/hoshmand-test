// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsTableAdapter extends TypeAdapter<PostsTable> {
  @override
  final int typeId = 1;

  @override
  PostsTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostsTable(
      userId: fields[0] as int?,
      id: fields[1] as int,
      title: fields[2] as String?,
      body: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PostsTable obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.body);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}