import 'package:flutter/material.dart';
import 'package:flutter_projeto/route_generator.dart';
import 'package:flutter_projeto/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hiragana Tec',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: 'home',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}







