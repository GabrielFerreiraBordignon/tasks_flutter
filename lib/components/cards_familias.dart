import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/familiaHiraganaEnum.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import '../enums/hiraganaEnum.dart';

class Cardsfamilias extends StatelessWidget {
  final List<Widget> children;

  const Cardsfamilias({
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
        ),
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: children,
        ),
      ),
    );
  }

  static final List<Widget> _defaultCards = [
    for (var familias in FamiliaHiraganaEnum.values)
      Cardsfamilias(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < familias.hiraganas.length; i++)
                  botaoHiraganas(hiragana: familias.hiraganas.elementAt(i)),
                  const SizedBox(height: 24),
              ],
            ),
          )
        ],
      ),
  ];

  static List<Widget> getCards() {
    return _defaultCards;
  }
}

class botaoHiraganas extends StatelessWidget {
  final HiraganaEnum hiragana;

  const botaoHiraganas({
    Key? key,
    required this.hiragana,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(Size(100.0, 100.0)),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: ColorsApp.red,
                  width: 4.0,
                ),
              ),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(ColorsApp.black)),
        onPressed: () => {},
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(hiragana.hiragana, style: TextStyle(color: ColorsApp.red, fontSize: 68.0),),
          Text(hiragana.romaji, style: TextStyle(color: ColorsApp.red, fontSize: 68.0),),
        ]));
  }
}
