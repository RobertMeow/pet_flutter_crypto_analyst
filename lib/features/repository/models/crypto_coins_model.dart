import 'package:equatable/equatable.dart';
import 'crypto_coin_model.dart';

class CryptoCoinsModel extends Equatable {
  CryptoCoinsModel({
    required this.coins,
  });

  final List<CryptoCoinModel> coins;

  @override
  List<Object?> get props => [coins];
}
