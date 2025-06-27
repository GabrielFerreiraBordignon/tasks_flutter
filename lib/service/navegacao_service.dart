import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import '../components/navegacao/card_modal_escolha_component.dart';
import '../enums/cardsEscolhaEnum.dart';

void defineRota(BuildContext context, String rota) {
  if(rota.isNotEmpty){
    if (rota == 'hiraganas') {
      openModalEscolha(context, CardsEscolhaEnum.hiraganas, CardsEscolhaEnum.familias);
    } else if(rota == 'exercicios') {
      openModalEscolha(context, CardsEscolhaEnum.exercicios, CardsEscolhaEnum.revisao);
    } else {
      Navigator.pushNamed(context, rota);
    }
  }
}

void openModalEscolha(BuildContext context, CardsEscolhaEnum card1, CardsEscolhaEnum card2) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 24.0),
        backgroundColor: ColorsApp.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: SizedBox(
          width: 1500,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              children: [
                  CardModalEscolhaComponent(card: card1),
                  CardModalEscolhaComponent(card: card2),
              ],
            ),
          ),
        ),
      );
    },
  );
}