import 'package:flutter/material.dart';

import '../conteudo/texto_certo_errado.dart';

enum certoErradoEnum {
  CERTO(
    texto1: textoCertoErrado.text1,
    texto2: ' ',
    icone: textoCertoErrado.iconeCerto,
  ),
  ERRADO(
    texto1: textoCertoErrado.text2,
    texto2: textoCertoErrado.text3,
    icone: textoCertoErrado.iconeErrado,
  );

  final String texto1;
  final String texto2;
  final Icon icone;

  const certoErradoEnum({
    required this.texto1,
    required this.texto2,
    required this.icone,
  });
}