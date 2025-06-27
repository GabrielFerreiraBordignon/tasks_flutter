import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/familiaHiraganaEnum.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import '../components/escolher_exercicio_component.dart';
import '../components/navegacao/icon_button_to_home_component.dart';

class ExerciciosScreen extends StatefulWidget {
  const ExerciciosScreen({super.key});

  @override
  State<ExerciciosScreen> createState() => _ExerciciosScreenState();
}

class _ExerciciosScreenState extends State<ExerciciosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.black,
      appBar: AppBar(
        leading: IconButtonToHomeComponent(),
        backgroundColor: ColorsApp.black,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Text(
                  'Exercícios',
                  style: TextStyle(fontSize: 35, color: ColorsApp.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          for (int i = 0; i < FamiliaHiraganaEnum.values.length; i++)
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: EscolherExercicioComponent(familia: FamiliaHiraganaEnum.values.elementAt(i),),
            )
        ],
      ),
    );
  }
}
