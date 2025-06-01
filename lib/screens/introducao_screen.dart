
import 'package:flutter/material.dart';

class IntroducaoScreen extends StatelessWidget {
  const IntroducaoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Introdução'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Bem-vindo à introdução do Hiragana Tec! Aqui você aprenderá os fundamentos do Hiragana, um dos silabários japoneses.',
            style: TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
