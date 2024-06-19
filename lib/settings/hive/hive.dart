import 'package:crypto_analyst/features/repository/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<Box<CryptoCoinsModel>> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CryptoCoinModelAdapter());
  Hive.registerAdapter(CryptoCoinsModelAdapter());

  return Hive.openBox<CryptoCoinsModel>("crypto_coins_box");
}
