// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget { // Corrigido para StatelessWidget
  static String tag = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0, // Adicionada vírgula
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('lib/assets/leon-avatar.jpg'),
        ),
      ),
    );

    const welcome = Padding(
      padding: EdgeInsets.all(8.0), // Corrigido para EdgeInsets
      child: Text(
        'Bem vindo Leon S.kennedy',
        style: TextStyle(fontSize: 28.0, color: Colors.white), // Adicionados dois pontos em color
      ),
    );

    const lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Leon S. Kennedy. Informações Classificadas.', // Corrigido nome para Kennedy
        style: TextStyle(fontSize: 16.0, color: Colors.white), // Adicionados dois pontos em fontSize e corrigido para EdgeInsets
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: const Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Banco de Dados RE'),
      ), // Adicionada vírgula
      body: body,
    );
  }
}
