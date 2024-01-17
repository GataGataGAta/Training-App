import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Column(
        children: [
          Center(
              child: Column(children: [
            const Padding(padding: EdgeInsets.only(top: 120)),
            const Text('First Page'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to second page'),
            ),
          ]))
        ],
      ),
    );
  }
}
