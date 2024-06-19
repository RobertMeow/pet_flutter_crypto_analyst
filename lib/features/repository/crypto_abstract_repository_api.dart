import 'package:crypto_analyst/features/repository/models/crypto_coins_model.dart';

abstract class CryptoAbstractRepositoryApi {
  Future<CryptoCoinsModel> getCryptoCoinsList();
}