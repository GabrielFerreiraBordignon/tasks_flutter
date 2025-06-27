import 'package:flutter/material.dart';

import '../../enums/cardsEscolhaEnum.dart';
import '../../utils/colors_app.dart';

class CardModalEscolhaComponent extends StatelessWidget {
  const CardModalEscolhaComponent({super.key, required this.card});
  final CardsEscolhaEnum card;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, card.rota),
        child: Card(
          color: ColorsApp.black,
          child: Center(
            child: Text(
              card.titulo,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
