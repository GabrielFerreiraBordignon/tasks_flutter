import 'package:flutter/material.dart';
import 'package:flutter_projeto/components/botao_hiragana_component.dart';

import '../enums/hiraganaEnum.dart';
import '../utils/colors_app.dart';

class HiraganasScreen extends StatefulWidget {
  const HiraganasScreen({super.key});

  @override
  State<HiraganasScreen> createState() => _HiraganasScreenState();
}

class _HiraganasScreenState extends State<HiraganasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: ColorsApp.black,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Text(
                    'HIRAGANAS',
                    style: TextStyle(fontSize: 35, color: ColorsApp.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body:
        ListaHiragana(),
    );
  }
}

class ListaHiragana extends StatelessWidget{
  const ListaHiragana({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.black,
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(46, (i) {
          return BotaoHiraganaComponent(
            hiragana: HiraganaEnum.values[i % HiraganaEnum.values.length],
          );
        }),
      ),
    );
  }
}
