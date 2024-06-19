import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

Dio initDio(Talker talker) {
  final dio = Dio(
      BaseOptions(baseUrl: 'http://167.179.106.140:5101/'  // TODO: вынести
      )
  );

  dio.interceptors.add(
    TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printResponseData: false,
      ),
    ),
  );
  return dio;
}