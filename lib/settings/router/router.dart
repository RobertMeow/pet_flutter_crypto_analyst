import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:crypto_analyst/features/crypto_coins_list/crypto_coins_list.dart';
import 'package:crypto_analyst/features/repository/models.dart';
import 'package:crypto_analyst/features/crypto_coin/crypto_coin.dart';
import 'package:flutter/cupertino.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CryptoListRoute.page, initial: true, path: '/'),
    AutoRoute(page: CryptoCoinRoute.page, path: '/coin'),
  ];
}
