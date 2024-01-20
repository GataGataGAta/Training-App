import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'first_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80),
              ),
              const Column(children: [
                Padding(
                  padding: EdgeInsets.only(left: 60, right: 10),
                  child: Text(
                    'ようこそ、Motivatorへ!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF824790),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'メールアドレスを入力してください',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'メールアドレスを確認してください';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ユーザー名を入力してください',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ユーザー名を確認してください';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'パスワードを入力してください',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'パスワードを入力してください';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'パスワードを確認してください',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'パスワードを確認してください';
                    }
                    return null;
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 40)),
              SizedBox(
                width: 220,
                height: 70,
                child: ElevatedButton(
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : const Text(
                          '会員登録',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  onPressed: () async {
                    if (isLoading) return;
                    if (_formKey.currentState!.validate()) {
                      await _signUp(context);
                    }
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: TextButton(
                  child: const Text(
                    'ログインページに戻る',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signUp(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    final email = _emailController.text;
    final userName = _userNameController.text;
    final password = _passwordController.text;
    try {
      await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
        data: {'username': userName},
      );
      if (!mounted) return;
      Navigator.of(context).pop();
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }
}
