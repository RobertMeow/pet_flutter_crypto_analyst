import 'package:crypto_analyst/features/repository/models.dart';
import 'package:flutter/cupertino.dart';

class CryptoNavigationBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  const CryptoNavigationBar({
    super.key,
    required this.coin,
  });

  final CryptoCoinModel coin;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                coin.iconUrl,
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              coin.coinName,
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
          ],
        ),
      ),

    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
