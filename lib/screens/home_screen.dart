import 'package:flutter/material.dart';

import '../components/navegacao/botao_navegacao_component.dart';
import '../enums/botaoNavegacao.dart';
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
          BotaoNavegacao(
            botao: BotaoNavegacaoEnum.introducao,
          ),
          BotaoNavegacao(
            botao: BotaoNavegacaoEnum.romanizacao,
          ),
          BotaoNavegacao(
            botao: BotaoNavegacaoEnum.hiraganas,
          ),
          BotaoNavegacao(
            botao: BotaoNavegacaoEnum.exercicios,
          ),
          BotaoNavegacao(
            botao: BotaoNavegacaoEnum.progresso,
          ),
        ]),
      ),
    );
  }
}
