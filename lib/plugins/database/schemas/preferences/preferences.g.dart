// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PreferencesSchemaAdapter extends TypeAdapter<PreferencesSchema> {
  @override
  final int typeId = 7;

  @override
  PreferencesSchema read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PreferencesSchema(
      lastSelectedSearchPlugin: fields[1] as String?,
    )..lastSelectedSearchType = fields[2] as String?;
  }

  @override
  void write(BinaryWriter writer, PreferencesSchema obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.lastSelectedSearchPlugin)
      ..writeByte(2)
      ..write(obj.lastSelectedSearchType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PreferencesSchemaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
