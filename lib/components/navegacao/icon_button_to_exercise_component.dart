import 'package:flutter/material.dart';

import '../../enums/botaoNavegacao.dart';
import '../../utils/colors_app.dart';

class IconButtonToExerciseComponent extends StatelessWidget {
  const IconButtonToExerciseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: ColorsApp.white),
      onPressed: () => Navigator.pushNamed(context, 'exercicios'),
    );
  }
}
