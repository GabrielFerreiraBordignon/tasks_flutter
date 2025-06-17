import 'package:flutter/material.dart';

import '../conteudo/textos_introducao.dart';
import '../utils/colors_app.dart';

class TextoIndroducaoComponent extends StatelessWidget {
  const TextoIndroducaoComponent({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        text,
        style: TextStyle(color:  ColorsApp.black, fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}

