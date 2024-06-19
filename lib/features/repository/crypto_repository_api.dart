import 'package:crypto_analyst/features/repository/crypto_abstract_repository_api.dart';
import 'package:crypto_analyst/features/repository/models/crypto_coins_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

class CryptoRepositoryApi implements CryptoAbstractRepositoryApi {
  CryptoRepositoryApi({
    required this.dio,
  });

  final Dio dio;
  
  @override
  Future<CryptoCoinsModel> getCryptoCoinsList() async {
    final resp = await dio.get("/getCoins");
    print(resp.data);

    return CryptoCoinsModel(coins: []);
  }
  
}