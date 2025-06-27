
import 'package:flutter/material.dart';

import '../components/cards_familias.dart';
import '../components/navegacao/icon_button_to_home_component.dart';
import '../utils/colors_app.dart';

class FamiliasScreen extends StatefulWidget{
  const FamiliasScreen({super.key});

  @override
  State<FamiliasScreen> createState() => _FamiliasScreenState();
}

class _FamiliasScreenState extends State<FamiliasScreen>{
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
          leading: IconButtonToHomeComponent(),
          backgroundColor: ColorsApp.black,
          iconTheme: IconThemeData(color: ColorsApp.white),
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Text(
                    'Famílias de',
                    style: TextStyle(fontSize: 35, color: ColorsApp.white),
                  ),
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
      body: PageView(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        children: Cardsfamilias.getCards(),
      ),
    );
  }
}