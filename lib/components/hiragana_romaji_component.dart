import 'package:flutter/material.dart';

import '../enums/hiraganaEnum.dart';
import '../service/hiraganas_service.dart';

class hiraganaRomaji extends StatelessWidget {
  const hiraganaRomaji({super.key, required this.hiragana});

  final HiraganaEnum hiragana;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8),
          textoModal(text: hiragana.hiragana),
          SizedBox(height: 28),
          textoModal(text: hiragana.romaji),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
