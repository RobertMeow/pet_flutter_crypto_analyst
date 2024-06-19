import 'package:equatable/equatable.dart';

class CryptoCoinModel extends Equatable {
  final String coinName;
  final String currentPrice;
  final String recommendation;

  CryptoCoinModel({
    required this.coinName,
    required this.currentPrice,
    required this.recommendation,
  });

  @override
  List<Object?> get props => [coinName, currentPrice, recommendation];
}
