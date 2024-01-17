import 'dart:ffi';

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
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 80, right: 10),
                child: Text(
                  'Training Motivator',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF824790),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter User ID',
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            const Center(
                child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                ),
              ),
            )),
            const Padding(padding: EdgeInsets.only(top: 40)),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {},
                child: const Text(
                  'パスワード、ユーザーIDを忘れた方はこちら',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF824790),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            SizedBox(
              height: 90,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF824790),
                  ),
                ),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
