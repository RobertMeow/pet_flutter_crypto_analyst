import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:crypto_analyst/features/crypto_coins_list/crypto_coins_list.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CryptoListRoute.page, initial: true, path: '/'),
  ];
}
