import 'package:crypto_analyst/features/repository/crypto_abstract_repository_api.dart';
import 'package:crypto_analyst/features/repository/models/crypto_coin_model.dart';
import 'package:crypto_analyst/features/repository/models/crypto_coins_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:talker_flutter/talker_flutter.dart';

class CryptoRepositoryApi implements CryptoAbstractRepositoryApi {
  CryptoRepositoryApi({
    required this.dio,
    required this.cryptoCoinsBox,
  });

  final Dio dio;
  final Box<CryptoCoinsModel> cryptoCoinsBox;
  
  @override
  Future<CryptoCoinsModel> getCryptoCoinsList() async {
    var cryptoCoinsModel;
    try {
      final resp = await dio.get("/getCoins");

      final cryptoCoins = (resp.data as List)
          .map((coinData) => CryptoCoinModel.fromJson(coinData))
          .toList();

      cryptoCoinsModel = CryptoCoinsModel(coins: cryptoCoins);
      cryptoCoinsBox.put('cryptoCoins', cryptoCoinsModel);

      return cryptoCoinsModel;
    } catch (e, st) {
      GetIt.instance<Talker>().handle(e, st);
      cryptoCoinsModel = cryptoCoinsBox.get('cryptoCoins');
      return cryptoCoinsModel;
    }
  }
}
