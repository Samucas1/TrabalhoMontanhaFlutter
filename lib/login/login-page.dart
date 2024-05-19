// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

import 'package:desafio_login/home-page.dart'; // Ajuste conforme o caminho correto do arquivo

class LoginPage extends StatefulWidget {
  static String tag = 'login_page';

  const LoginPage({super.key}); // Ajuste para consistência
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/umbrella-logo.jpg'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'leon@re4.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'alguma coisa',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        ),
        child: Text('Login', style: const TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = TextButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        print('Pressed');
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            const SizedBox(height: 48.0),
            email,
            const SizedBox(height: 8.0),
            password,
            const SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
