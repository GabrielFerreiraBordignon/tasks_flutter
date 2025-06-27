import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/botaoNavegacao.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import '../../service/navegacao_service.dart';

class BotaoNavegacao extends StatelessWidget {

  const BotaoNavegacao({Key? key, required this.botao}) : super(key: key);
  final BotaoNavegacaoEnum botao;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: ElevatedButton(
        onPressed: () {
          defineRota(context, botao.rota);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(ColorsApp.white),
          minimumSize: WidgetStateProperty.all(Size(280.0, 100.0)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: ColorsApp.red,
                width: 4.0,
              ),
            ),
          ),
        ),
        child: Column(
          children: [
            Image.asset(botao.imagem, width: 40, height: 40),
            Text(botao.nome, style: TextStyle(fontSize: 30, color:  ColorsApp.red)),
          ],
        ),
      ),
    );
  }
}
