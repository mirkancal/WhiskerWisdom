// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatFactDTOAdapter extends TypeAdapter<_$_CatFactDTO> {
  @override
  final int typeId = 1;

  @override
  _$_CatFactDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CatFactDTO(
      text: fields[0] as String,
      createdAt: fields[1] as DateTime,
      verified: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CatFactDTO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.verified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatFactDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
