import 'package:auto_route/auto_route.dart';
import 'package:crypto_analyst/features/repository/models.dart';
import 'package:crypto_analyst/settings/settings.dart';
import 'package:flutter/cupertino.dart';

class CryproCoinTile extends StatelessWidget {
  const CryproCoinTile({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CryptoCoinModel coin;

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);
    return CupertinoListTile.notched(
      leading: Image.network(coin.iconUrl),
      title: Text(
        coin.coinName.split(".").first,
        style: theme.textTheme.textStyle.copyWith(
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        '${coin.currentPrice} \$',
        style: theme.textTheme.navActionTextStyle,
      ),
      trailing: const Icon(CupertinoIcons.arrow_right),
      onTap: () {
        AutoRouter.of(context).push(CryptoCoinRoute(coin: coin));
        // Navigator.of(context).pushNamed(
        //   '/coin',
        //   arguments: coin,
        // );
      },
    );
  }
}
