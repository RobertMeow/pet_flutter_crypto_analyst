part of 'crypto_coin_bloc.dart';

abstract class CryptoCoinEvent extends Equatable {}

class FetchCryptoCoins extends CryptoCoinEvent {
  FetchCryptoCoins({
    this.completer,
  });

  final Completer? completer;

  @override
  List<Object?> get props => [completer];
}
