import 'package:crypto_analyst/settings/bloc/bloc.dart';
import 'package:crypto_analyst/settings/dio/dio.dart';
import 'package:crypto_analyst/settings/firebase/firebase.dart';
import 'package:crypto_analyst/settings/router/router.dart';
import 'package:crypto_analyst/settings/service_locator.dart';
import 'package:crypto_analyst/settings/talker/talker.dart';
import 'package:crypto_analyst/settings/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:flutter/cupertino.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initFirebase();
  final talker = initTalker();
  final dio = initDio(talker);
  initBloc(talker);

  setupLocator(talker, dio);
  runApp(CryptoAnalystApp(talker: talker));
}

class CryptoAnalystApp extends StatelessWidget {
  CryptoAnalystApp({super.key, required this.talker});

  final _appRouter = AppRouter();
  final Talker talker;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Crypto Analyst',
      theme: darkTheme,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [
          TalkerRouteObserver(talker),
        ],
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        DefaultCupertinoLocalizations.delegate,
        DefaultMaterialLocalizations.delegate
      ],
    );
  }
}
