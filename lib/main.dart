import 'package:crypto_analyst/features/repository/models.dart';
import 'package:crypto_analyst/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  initFirebase();
  final talker = initTalker();
  final dio = initDio(talker);
  initBloc(talker);

  final Box<CryptoCoinsModel> cryptoCoinsBox = await initHive();

  setupLocator(talker, dio, cryptoCoinsBox);
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
