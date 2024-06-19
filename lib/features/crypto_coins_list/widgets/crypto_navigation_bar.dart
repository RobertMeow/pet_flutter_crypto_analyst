import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

class CryptoNavigationBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  const CryptoNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: IntrinsicWidth(
        child: Row(
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
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
          ],
        ),
      ),
      trailing: GestureDetector(
        child: const Icon(
          CupertinoIcons.info,
          size: 24,
        ),
        onTap: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
                builder: (context) => TalkerScreen(talker: GetIt.I<Talker>())
            ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 35);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
