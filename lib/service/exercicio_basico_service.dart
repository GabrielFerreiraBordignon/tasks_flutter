import 'package:flutter/cupertino.dart';
import 'package:flutter_projeto/enums/hiraganaEnum.dart';

import '../enums/familiaHiraganaEnum.dart';

proximoExercicio(FamiliaHiraganaEnum familia, BuildContext context, int numeroAtual) {
  if (numeroAtual == familia.hiraganas.length) {
    Navigator.pushNamed(
      context,
      'exercicios',
    );
  }
  List<HiraganaEnum> familiaMenosUm = List<HiraganaEnum>.from(familia.hiraganas);

  final errados = familia.hiraganas.where((hiragana) => hiragana.value != familia.hiraganas.elementAt(numeroAtual).value).toList();
  if (errados.isNotEmpty) {
    errados.shuffle();
    final aleatorio = errados.first;

    familiaMenosUm.remove(aleatorio);
  }

  familiaMenosUm.shuffle();
  chamaExercicio(familia, context, numeroAtual, familiaMenosUm);
}

chamaExercicio(FamiliaHiraganaEnum familia, BuildContext context, int numeroAtual, List<HiraganaEnum> familiaMenosUm) {
  Navigator.pushNamed(
    context,
    'exercicio_basico',
    arguments: {
      'hiraganaCerto': familia.hiraganas.elementAt(numeroAtual),
      'familia' : familia,
      'hiraganas': familiaMenosUm,
      'numeroAtual': numeroAtual,
    },
  );
}