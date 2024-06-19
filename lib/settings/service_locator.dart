import 'package:crypto_analyst/features/repository/crypto_repository_api.dart';
import 'package:crypto_analyst/features/repository/models.dart';
import 'package:crypto_analyst/features/repository/crypto_abstract_repository_api.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:talker/talker.dart';

final GetIt getIt = GetIt.instance;

void setupLocator(talker, dio, cryptoCoinsBox) {
  getIt.registerSingleton<Talker>(talker);
  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<Box<CryptoCoinsModel>>(() => cryptoCoinsBox);

  GetIt.I.registerLazySingleton<CryptoAbstractRepositoryApi>(
        () => CryptoRepositoryApi(
      dio: dio,
      cryptoCoinsBox: cryptoCoinsBox,
    ),
  );
}
