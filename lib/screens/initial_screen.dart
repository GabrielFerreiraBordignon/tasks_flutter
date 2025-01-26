import 'package:flutter/material.dart';
import 'package:flutter_projeto/components/task.dart';

class InitalScreen extends StatefulWidget {
  const InitalScreen({super.key});

  @override
  State<InitalScreen> createState() => _InitalScreenState();
}

class _InitalScreenState extends State<InitalScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blue,
        title: Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade == true ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Task(
                'Aprender Flutter',
                'assets/images/dash (1).png',
                4),
            Task(
                'Andar de Bike',
                'assets/images/bike (1).webp',
                4),
            Task(
                'Meditar',
                'assets/images/meditar (1).jpeg',
                5),
            Task(
                'Ler',
                'assets/images/livro (1).jpg',
                1),
            Task('Jogar',
                'assets/images/jogar (1).jpg', 0),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}