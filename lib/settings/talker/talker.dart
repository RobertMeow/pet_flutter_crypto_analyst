import 'package:flutter/cupertino.dart';
import 'package:talker_flutter/talker_flutter.dart';

Talker initTalker() {
  final talker = TalkerFlutter.init();
  FlutterError.onError = (details) => talker.handle(details.exception, details.stack);
  return talker;
}