import 'package:flutter/material.dart';
import 'package:flutter_projeto/conteudo/textos_romanizacao.dart';

import '../utils/colors_app.dart';

class RomanizacaoScreen extends StatefulWidget {
  const RomanizacaoScreen({Key? key}) : super(key: key);

  @override
  _RomanizacaoScreenState createState() => _RomanizacaoScreenState();
}

class _RomanizacaoScreenState extends State<RomanizacaoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: ColorsApp.black,
          iconTheme: IconThemeData(color: Colors.white),
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Text(
                    'Romanização',
                    style: TextStyle(fontSize: 35, color: ColorsApp.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorsApp.red,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(16),
            color: ColorsApp.white,
          ),
          child: Column(
            children: [
              Text(TextosRomanizacao.conteudo,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: ColorsApp.black, fontSize: 18,),),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/sushi_romaji.png',
                      width: 420, height: 180),
                  Image.asset('assets/images/anime_romaji.png',
                      width: 420, height: 180),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: ColorsApp.black,
    );
  }
}
