import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker/talker.dart';

final GetIt getIt = GetIt.instance;

void setupLocator(talker, dio) {
  getIt.registerSingleton<Talker>(talker);
  getIt.registerLazySingleton<Dio>(() => dio);
}
