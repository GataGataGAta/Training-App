import 'package:flutter/material.dart';

void main() {
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Training Motivator',
      home: Scaffold(
        body: Center(
          child: Text('Training Motivator'),
        ),
      ),
    );
  }
}
