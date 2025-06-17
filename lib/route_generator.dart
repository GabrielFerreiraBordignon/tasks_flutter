import 'package:flutter/material.dart';
import 'package:flutter_projeto/screens/hiraganas_screen.dart';
import 'package:flutter_projeto/screens/home_screen.dart';
import 'package:flutter_projeto/screens/introducao_screen.dart';
import 'package:flutter_projeto/screens/romanizacao_screen.dart.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

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

      default: return _erroRoute();
    }
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Erro'),
        ),
        body: const Center(
          child: Text('Rota não encontrada'),
        ),
      ),
    );
  }
}