import 'package:flutter/material.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import '../components/hiragana_romaji_component.dart';
import '../enums/hiraganaEnum.dart';

void openModalHiragana(BuildContext context, HiraganaEnum hiragana) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: ColorsApp.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: hiraganaRomaji(hiragana: hiragana),

      );
    },
  );
}

class textoModal extends StatelessWidget {
  const textoModal({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 80,
        color: ColorsApp.red,
      ),
      textAlign: TextAlign.center,
    );
  }
}

