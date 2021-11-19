// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/dad_joke_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DadJokeAdapter extends TypeAdapter<DadJoke> {
  @override
  final int typeId = 1;

  @override
  DadJoke read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DadJoke(
      id: fields[0] as int?,
      jokeId: fields[1] as String?,
      joke: fields[2] as String?,
      viewed: fields[3] as bool,
      liked: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, DadJoke obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.jokeId)
      ..writeByte(2)
      ..write(obj.joke)
      ..writeByte(3)
      ..write(obj.viewed)
      ..writeByte(4)
      ..write(obj.liked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DadJokeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
