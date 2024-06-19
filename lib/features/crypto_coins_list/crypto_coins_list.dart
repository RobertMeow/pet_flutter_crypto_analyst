import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:talker/talker.dart';
import 'package:talker_flutter/talker_flutter.dart';


@RoutePage()
class CryptoListPage extends StatefulWidget {
  const CryptoListPage({super.key});

  @override
  State<CryptoListPage> createState() => _CryptoListPageState();
}

class _CryptoListPageState extends State<CryptoListPage> {
  final GetIt getIt = GetIt.instance;

  @override
  void initState() {
    // GetIt.I.get<Dio>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/img/icon_app.png',
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              'Crypto Coins List',
              style: theme.textTheme.navTitleTextStyle,
            ),
          ],
        ),
        trailing: GestureDetector(
          child: const Icon(
            CupertinoIcons.info,
            size: 24,
          ),
          onTap: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) => TalkerScreen(talker: getIt<Talker>())
              ),
            );
          },
        ),
      ),
      child: Container(),
    );
  }
}
