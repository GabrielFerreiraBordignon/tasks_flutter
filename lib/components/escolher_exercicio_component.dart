import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/familiaHiraganaEnum.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../service/exercicio_basico_service.dart';
import '../utils/colors_app.dart';

class EscolherExercicioComponent extends StatelessWidget {
  const EscolherExercicioComponent({super.key, required this.familia});

  final FamiliaHiraganaEnum familia;

  @override
  Widget build(BuildContext context) {
    final String primeiroHiraganaFamilia =
        familia.hiraganas.elementAt(0).romaji.toString();

    return Container(
      padding: EdgeInsets.all(4.0),
      height: 120,
      decoration: BoxDecoration(
          color: ColorsApp.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: ColorsApp.red, width: 2.0)),
      child: Row(
        children: [
          tituloFamilia(primeiroHiraganaFamilia),
          botaoPlay(context),
        ],
      ),
    );
  }

  Widget tituloFamilia(String primeiroHiraganaFamilia){
    return Column(children: [
        Text(
          'Exercício família $primeiroHiraganaFamilia',
          style: TextStyle(
              fontSize: 24,
              color: ColorsApp.red,
              fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Container(
            child: Row(
              children: [
                for (int i = 0; i < familia.hiraganas.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      familia.hiraganas.elementAt(i).hiragana,
                      style:
                      TextStyle(color: ColorsApp.black, fontSize: 40),
                    ),
                  )
              ],
            ),
          ),
        )
      ]
    );
  }

  Widget botaoPlay(BuildContext context){
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: 0.3,
                strokeWidth: 6,
                color: ColorsApp.red,
                backgroundColor: Colors.grey[300],
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    proximoExercicio(familia, context, 0);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(MdiIcons.play, size: 90,
                      color: ColorsApp.black,),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}


