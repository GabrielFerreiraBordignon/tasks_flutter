import 'package:flutter/material.dart';
import 'package:flutter_projeto/components/texto_indroducao_component.dart';
import 'package:flutter_projeto/components/titulo_introducao_component.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import '../conteudo/textos_introducao.dart';

class CardsIntroducao extends StatelessWidget {
  final List<Widget> children;

  const CardsIntroducao({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: ColorsApp.red,
            width: 2.0,
          )
        ),
        elevation: 8,
        color: ColorsApp.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }

  static final List<Widget> _defaultCards = [
    CardsIntroducao(
      children: [
        TituloIntroducaoComponent(text: 'Primeiros passos', text2: ' '),
        const SizedBox(height: 24),
        TextoIndroducaoComponent(text: TextosIntroducao.cardUm),
      ],
    ),

    CardsIntroducao(
      children: [
        TituloIntroducaoComponent(text: 'Os alfabetos', text2: ' '),
        const SizedBox(height: 24),
        TextoIndroducaoComponent(text: TextosIntroducao.cardDois),
      ],
    ),

    CardsIntroducao(
      children: [
        TituloIntroducaoComponent(text: 'KANJI',text2: '漢字'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ],
        ),
        const SizedBox(height: 24),
        TextoIndroducaoComponent(text: TextosIntroducao.cardTres),
      ],
    ),

    CardsIntroducao(
      children: [
        TituloIntroducaoComponent(text: 'HIRAGANA',text2: 'ひらがな'),
        const SizedBox(height: 24),
        TextoIndroducaoComponent(text: TextosIntroducao.cardQuatro),
      ],
    ),

    CardsIntroducao(
      children: [
        TituloIntroducaoComponent(text: 'KATAKANA',text2: 'カタカナ'),
        const SizedBox(height: 24),
        TextoIndroducaoComponent(text: TextosIntroducao.cardCinco),
      ],
    ),
  ];

  static List<Widget> getCards() {
    return _defaultCards;
  }
}
