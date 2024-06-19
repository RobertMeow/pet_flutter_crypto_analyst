import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_coin_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class CryptoCoinModel extends Equatable {
  CryptoCoinModel({
    required this.coinName,
    required this.iconUrl,
    required this.currentPrice,
    required this.recommendation,
  });

  @HiveField(0)
  @JsonKey(name: 'coin_name')
  final String coinName;

  @HiveField(1)
  @JsonKey(name: 'icon_url')
  final String iconUrl;

  @HiveField(2)
  @JsonKey(name: 'current_price')
  final double currentPrice;

  @HiveField(3)
  @JsonKey(name: 'recommendation')
  final String recommendation;

  factory CryptoCoinModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinModelFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCoinModelToJson(this);

  @override
  List<Object?> get props => [coinName, iconUrl, currentPrice, recommendation];
}
