import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/botaoHomeEnum.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

class BotaoHomeScreen extends StatelessWidget {

  const BotaoHomeScreen({Key? key, required this.botao}) : super(key: key);
  final BotaoHomeEnum botao;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, botao.rota);
        },
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(Size(280, 100)),
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
