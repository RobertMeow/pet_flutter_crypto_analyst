import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

void showMessageDialog(String title, String message, BuildContext context, Function onPressed) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          CupertinoDialogAction(
            child: const Text('Try again'),
            onPressed: () {
              context.router.maybePop();
              onPressed();
            },
          ),
        ],
      );
    },
  );
}