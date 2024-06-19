import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_analyst/features/repository/crypto_abstract_repository_api.dart';
import 'package:crypto_analyst/features/repository/models/crypto_coins_model.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'crypto_coin_event.dart';
part 'crypto_coin_state.dart';

class CryptoCoinBloc extends Bloc<CryptoCoinEvent, CryptoCoinState> {
  CryptoCoinBloc(this.abstractRepositoryApi) : super(CryptoCoinInitial()) {
    on<LoadCryptoCoins>(_load);
  }

  final CryptoAbstractRepositoryApi abstractRepositoryApi;

  Future<void> _load(
      LoadCryptoCoins event,
      Emitter<CryptoCoinState> emit,
      ) async {
    try {
      if (state is! CryptoCoinLoaded) {
        emit(CryptoCoinLoading());
      }
      final coinsList = await abstractRepositoryApi.getCryptoCoinsList();
      emit(CryptoCoinLoaded(coinsList: coinsList));
    } catch (e, st) {
      emit(CryptoCoinLoadingFailure(exception: e));
      GetIt.I<Talker>().handle(e, st);
    } finally {
      event.completer?.complete();
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    GetIt.I<Talker>().handle(error, stackTrace);
  }
}
