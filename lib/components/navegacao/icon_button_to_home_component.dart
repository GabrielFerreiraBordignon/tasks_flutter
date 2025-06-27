import 'package:flutter/material.dart';

import '../../enums/botaoNavegacao.dart';
import '../../utils/colors_app.dart';

class IconButtonToHomeComponent extends StatelessWidget {
  const IconButtonToHomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: ColorsApp.white),
      onPressed: () => Navigator.pushNamed(context, BotaoNavegacaoEnum.home.rota),
    );
  }
}
