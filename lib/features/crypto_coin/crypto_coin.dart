import 'package:auto_route/auto_route.dart';
import 'package:crypto_analyst/features/crypto_coin/widgets/crypto_navigation_bar.dart';
import 'package:crypto_analyst/features/repository/models.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class CryptoCoinPage extends StatelessWidget {
  const CryptoCoinPage({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CryptoCoinModel coin;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CryptoNavigationBar(
        coin: coin,
      ),
      child: SafeArea(
          child: Column(
        children: [
          CupertinoListSection(
            header: Text('Information'),
            children: [
              CupertinoListTile(
                title: Text('Current price'),
                subtitle: Text('${coin.currentPrice}'),
              ),
              CupertinoListTile(
                title: Text('Recommendation'),
                subtitle: Text('${coin.recommendation}'),
              ),
            ],
          ),
          Text(
            'There will be more information here someday...',
            style: CupertinoTheme.of(context)
                .textTheme
                .actionTextStyle
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
