import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'crypto_coin_model.dart';

part 'crypto_coins_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class CryptoCoinsModel extends Equatable {
  CryptoCoinsModel({
    required this.coins,
  });

  @HiveField(0)
  final List<CryptoCoinModel> coins;

  factory CryptoCoinsModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCoinsModelToJson(this);

  @override
  List<Object?> get props => [coins];
}
