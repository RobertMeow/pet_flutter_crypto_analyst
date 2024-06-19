// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_coin_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CryptoCoinModelAdapter extends TypeAdapter<CryptoCoinModel> {
  @override
  final int typeId = 1;

  @override
  CryptoCoinModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CryptoCoinModel(
      coinName: fields[0] as String,
      iconUrl: fields[1] as String,
      currentPrice: fields[2] as double,
      recommendation: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CryptoCoinModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.coinName)
      ..writeByte(1)
      ..write(obj.iconUrl)
      ..writeByte(2)
      ..write(obj.currentPrice)
      ..writeByte(3)
      ..write(obj.recommendation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CryptoCoinModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoCoinModel _$CryptoCoinModelFromJson(Map<String, dynamic> json) =>
    CryptoCoinModel(
      coinName: json['coin_name'] as String,
      iconUrl: json['icon_url'] as String,
      currentPrice: (json['current_price'] as num).toDouble(),
      recommendation: json['recommendation'] as String,
    );

Map<String, dynamic> _$CryptoCoinModelToJson(CryptoCoinModel instance) =>
    <String, dynamic>{
      'coin_name': instance.coinName,
      'icon_url': instance.iconUrl,
      'current_price': instance.currentPrice,
      'recommendation': instance.recommendation,
    };
