import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/hiraganaEnum.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import '../service/hiraganas_service.dart';

class BotaoHiraganaComponent extends StatelessWidget {
  const BotaoHiraganaComponent({super.key, required this.hiragana});
  final HiraganaEnum hiragana;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        child: OutlinedButton(onPressed: () => openModalHiragana(context, hiragana), style: OutlinedButton.styleFrom(
          backgroundColor: ColorsApp.black,
          side: const BorderSide(color: ColorsApp.red, width: 1.0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
          ),
        ), child: Text(hiragana.hiragana, style: TextStyle(
          fontSize: 75,
          color: ColorsApp.red,
        ),),
      ),
      )
    );
  }
}
