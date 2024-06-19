part of 'crypto_coin_bloc.dart';

abstract class CryptoCoinState extends Equatable {}

class CryptoCoinInitial extends CryptoCoinState {
  @override
  List<Object?> get props => [];
}

class CryptoCoinLoading extends CryptoCoinState {
  @override
  List<Object?> get props => [];
}

class CryptoCoinLoaded extends CryptoCoinState {
  CryptoCoinLoaded({
    required this.coinsList,
  });

  final CryptoCoinsModel coinsList;

  @override
  List<Object?> get props => [coinsList];
}

class CryptoCoinLoadingFailure extends CryptoCoinState {
  CryptoCoinLoadingFailure({
    this.exception,
  });

  final Object? exception;

  @override
  List<Object?> get props => [exception];
}

class CryptoCoinDataState extends CryptoCoinState {
  CryptoCoinDataState(
    this.error, {
    this.coins = const [],
    this.isLoading = false,
  });

  final List<CryptoCoinsModel> coins;
  final bool isLoading;
  final String error;

  @override
  List<Object> get props => [coins, isLoading, error];
}
