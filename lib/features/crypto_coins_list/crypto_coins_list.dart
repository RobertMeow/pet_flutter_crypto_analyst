import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:crypto_analyst/features/bloc/crypto_coin_bloc.dart';
import 'package:crypto_analyst/features/crypto_coins_list/widgets/crypto_dialog.dart';
import 'package:crypto_analyst/features/crypto_coins_list/widgets/crypto_navigation_bar.dart';
import 'package:crypto_analyst/features/crypto_coins_list/widgets/crypto_tile.dart';
import 'package:crypto_analyst/features/repository/crypto_abstract_repository_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class CryptoListPage extends StatefulWidget {
  const CryptoListPage({super.key});

  @override
  State<CryptoListPage> createState() => _CryptoListPageState();
}

class _CryptoListPageState extends State<CryptoListPage> {
  final _cryptoCoinBloc = CryptoCoinBloc(
    GetIt.I<CryptoAbstractRepositoryApi>(),
  );

  @override
  void initState() {
    _cryptoCoinBloc.add(LoadCryptoCoins());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CryptoNavigationBar(),
      child: RefreshIndicator(
        onRefresh: () async {
          final completer = Completer();
          _cryptoCoinBloc.add(LoadCryptoCoins(completer: completer));
          return completer.future;
        },
        child: BlocConsumer<CryptoCoinBloc, CryptoCoinState>(
          bloc: _cryptoCoinBloc,
          listener: (context, state) {
            if (state is CryptoCoinLoadingFailure) {
              showMessageDialog(
                  "Something went wrong", "Please try again later", context,
                  () => _cryptoCoinBloc.add(LoadCryptoCoins()));
            }
          },
          builder: (context, state) {
            if (state is CryptoCoinLoaded) {
              return ListView.separated(
                padding: const EdgeInsets.only(top: 16),
                itemCount: state.coinsList.coins.length,
                separatorBuilder: (context, index) => const Divider(
                  color: CupertinoColors.quaternarySystemFill,
                ),
                itemBuilder: (context, i) {
                  final coin = state.coinsList.coins[i];
                  return CryproCoinTile(coin: coin);
                },
              );
            }
            if (state is CryptoCoinLoadingFailure) {
              return const SizedBox();
            }
            return const Center(child: CupertinoActivityIndicator());
          },
        ),
      ),
    );
  }
}
