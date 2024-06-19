// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_coins_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CryptoCoinsModelAdapter extends TypeAdapter<CryptoCoinsModel> {
  @override
  final int typeId = 2;

  @override
  CryptoCoinsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CryptoCoinsModel(
      coins: (fields[0] as List).cast<CryptoCoinModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, CryptoCoinsModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.coins);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CryptoCoinsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoCoinsModel _$CryptoCoinsModelFromJson(Map<String, dynamic> json) =>
    CryptoCoinsModel(
      coins: (json['coins'] as List<dynamic>)
          .map((e) => CryptoCoinModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CryptoCoinsModelToJson(CryptoCoinsModel instance) =>
    <String, dynamic>{
      'coins': instance.coins,
    };
