import 'package:flutter/material.dart';
import 'package:flutter_projeto/components/cards_introducao.dart';

import '../utils/colors_app.dart';

class IntroducaoScreen extends StatefulWidget {
  const IntroducaoScreen({Key? key}) : super(key: key);

  @override
  _IntroducaoScreenState createState() => _IntroducaoScreenState();
}

class _IntroducaoScreenState extends State<IntroducaoScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.black,
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
                    'Introdução',
                    style: TextStyle(fontSize: 35, color: ColorsApp.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        children: CardsIntroducao.getCards(),
      ),
    );
  }
}
