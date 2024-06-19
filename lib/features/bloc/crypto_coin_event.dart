part of 'crypto_coin_bloc.dart';

abstract class CryptoCoinEvent extends Equatable {}

class LoadCryptoCoins extends CryptoCoinEvent {
  LoadCryptoCoins({
    this.completer,
  });

  final Completer? completer;

  @override
  List<Object?> get props => [completer];
}
