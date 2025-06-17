import 'package:flutter/material.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 8),
              textoModal(text: hiragana.hiragana),
              SizedBox(height: 32),
              textoModal(text: hiragana.romaji),
              SizedBox(height: 8),
            ],
          ),
        ),
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

