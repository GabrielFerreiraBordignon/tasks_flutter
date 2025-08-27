import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/certoErradoEnum.dart';
import 'package:flutter_projeto/enums/hiraganaEnum.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../components/hiragana_romaji_component.dart';
import '../components/navegacao/icon_button_to_exercise_component.dart';
import '../enums/familiaHiraganaEnum.dart';
import '../service/exercicio_basico_service.dart';
import '../utils/colors_app.dart';

class ExercicioBasicoScreen extends StatefulWidget {
  final HiraganaEnum hiraganaCerto;
  final FamiliaHiraganaEnum familia;
  final List<HiraganaEnum> hiraganas;
  final int numeroAtual;

  const ExercicioBasicoScreen(
      {required this.hiraganaCerto,
      required this.familia,
      required this.hiraganas,
      required this.numeroAtual,
      super.key});

  @override
  State<ExercicioBasicoScreen> createState() => _ExercicioBasicoScreenState();
}

class _ExercicioBasicoScreenState extends State<ExercicioBasicoScreen> {
  @override
  Widget build(BuildContext context) {
    final List<HiraganaEnum> hiraganas = widget.hiraganas;
    final HiraganaEnum hiraganaCerto = widget.hiraganaCerto;

    return Scaffold(
      backgroundColor: ColorsApp.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppBar(
          leading: IconButtonToExerciseComponent(),
          backgroundColor: ColorsApp.black,
          iconTheme: const IconThemeData(color: Colors.white),
          flexibleSpace: Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 44),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Selecione o ',
                      style: TextStyle(
                        color: ColorsApp.white,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'HIRAGANA ',
                      style: TextStyle(
                        color: ColorsApp.white,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'correspondente',
                      style: TextStyle(
                        color: ColorsApp.white,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: Container(
              color: ColorsApp.black,
              child: Center(
                child: Text(
                  hiraganaCerto.romaji,
                  style: TextStyle(
                    color: ColorsApp.red,
                    fontSize: 65,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 70,
            child: Container(
              color: ColorsApp.black,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        botaoMostraHiragana(
                          hiraganas.elementAt(0),
                        ),
                        SizedBox(width: 32),
                        botaoMostraHiragana(
                          hiraganas.elementAt(1),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        botaoMostraHiragana(
                          hiraganas.elementAt(2),
                        ),
                        SizedBox(width: 32),
                        botaoMostraHiragana(
                          hiraganas.elementAt(3),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  botaoMostraHiragana(HiraganaEnum hiragana) {
    return ElevatedButton(
      onPressed: () {
        if (hiragana == widget.hiraganaCerto) {
          openModalCertoErrado(certoErradoEnum.CERTO);
        } else {
          openModalCertoErrado(certoErradoEnum.ERRADO);
        }
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(ColorsApp.black),
        minimumSize: WidgetStateProperty.all(Size(140.0, 180.0)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(
              color: ColorsApp.red,
              width: 1.0,
            ),
          ),
        ),
      ),
      child: Text(
        hiragana.hiragana,
        style: TextStyle(
            color: ColorsApp.red, fontSize: 75, fontWeight: FontWeight.bold),
      ),
    );
  }

  openModalCertoErrado(certoErradoEnum certoErrado) {
    final String text1 = certoErrado.texto1;
    final String text2 = certoErrado.texto2;
    final Icon icone = certoErrado.icone;
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 100.0),
          backgroundColor: ColorsApp.black,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: TextStyle(color: ColorsApp.white, fontSize: 24),
              ),
              SizedBox(height: 8),
              icone,
              SizedBox(height: 8),
              Text(
                text2,
                style: TextStyle(color: ColorsApp.white, fontSize: 24),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: ColorsApp.red,
                    width: 2,
                  ),
                ),
                child: hiraganaRomaji(hiragana: widget.hiraganaCerto),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                proximoExercicio(widget.familia, context, widget.numeroAtual + 1);
              },
              child: Icon(
                MdiIcons.skipNextOutline,
                size: 40,
                color: ColorsApp.red,
              ),
            ),
          ],
        );
      },
    );
  }
}
