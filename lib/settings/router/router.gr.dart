// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CryptoListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CryptoListPage(),
      );
    }
  };
}

/// generated route for
/// [CryptoListPage]
class CryptoListRoute extends PageRouteInfo<void> {
  const CryptoListRoute({List<PageRouteInfo>? children})
      : super(
          CryptoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CryptoListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
