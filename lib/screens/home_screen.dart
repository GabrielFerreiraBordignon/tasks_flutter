import 'package:flutter/material.dart';

import '../components/botao_home_component.dart';
import '../enums/botaoHomeEnum.dart';
import '../utils/colors_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: ColorsApp.black,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Text(
                    'Jornada',
                    style: TextStyle(fontSize: 35, color: ColorsApp.white),
                  ),
                  Text(
                    'HIRAGANA',
                    style: TextStyle(fontSize: 35, color: ColorsApp.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          BotaoHomeScreen(
            botao: BotaoHomeEnum.introducao,
          ),
          BotaoHomeScreen(
            botao: BotaoHomeEnum.romanizacao,
          ),
          BotaoHomeScreen(
            botao: BotaoHomeEnum.hiraganas,
          ),
          BotaoHomeScreen(
            botao: BotaoHomeEnum.exercicios,
          ),
          BotaoHomeScreen(
            botao: BotaoHomeEnum.progresso,
          ),
        ]),
      ),
    );
  }
}
