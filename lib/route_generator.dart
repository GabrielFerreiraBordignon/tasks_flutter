import 'package:flutter/material.dart';
import 'package:flutter_projeto/enums/familiaHiraganaEnum.dart';
import 'package:flutter_projeto/enums/hiraganaEnum.dart';
import 'package:flutter_projeto/screens/exercicio_basico_screen.dart';
import 'package:flutter_projeto/screens/exercicios_screen.dart';
import 'package:flutter_projeto/screens/familias_screen.dart';
import 'package:flutter_projeto/screens/hiraganas_screen.dart';
import 'package:flutter_projeto/screens/home_screen.dart';
import 'package:flutter_projeto/screens/introducao_screen.dart';
import 'package:flutter_projeto/screens/romanizacao_screen.dart.dart';
import 'package:flutter_projeto/utils/colors_app.dart';

import 'components/navegacao/icon_button_to_home_component.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name) {
      case 'home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case 'introducao':
        return MaterialPageRoute(
          builder: (_) => const IntroducaoScreen(),
        );
      case 'romanizacao':
        return MaterialPageRoute(
          builder: (_) => const RomanizacaoScreen(),
        );
      case 'hiraganas':
        return MaterialPageRoute(
          builder: (_) => const HiraganasScreen(),
        );
      case 'exercicios':
        return MaterialPageRoute(
          builder: (_) => const ExerciciosScreen(),
        );
      case 'familias':
        return MaterialPageRoute(
          builder: (_) => const FamiliasScreen(),
        );
      case 'exercicio_basico':
        final args = settings.arguments as Map<String, dynamic>;
        final hiraganaCerto = args['hiraganaCerto'] as HiraganaEnum;
        final familia = args['familia'] as FamiliaHiraganaEnum;
        final hiraganas = args['hiraganas'] as List<HiraganaEnum>;
        final numeroAtual = args['numeroAtual'] as int;

        return MaterialPageRoute(
          builder: (_) => ExercicioBasicoScreen(hiraganaCerto: hiraganaCerto, familia: familia, hiraganas: hiraganas, numeroAtual: numeroAtual),
        );

      default: return _erroRoute();
    }
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsApp.black,
          leading: IconButtonToHomeComponent(),
          title: const Text('Erro', style: TextStyle( color: ColorsApp.white),),
        ),
        body: const Center(
          child: Text('Rota não encontrada'),
        ),
      ),
    );
  }
}