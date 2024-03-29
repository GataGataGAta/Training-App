import 'package:flutter/material.dart';

/// エラーが起きた際のSnackbarを表示
void showErrorSnackBar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: Colors.purple,
  ));
}
