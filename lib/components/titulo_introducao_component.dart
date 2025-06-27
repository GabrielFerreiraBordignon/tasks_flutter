import 'package:flutter/material.dart';

import '../utils/colors_app.dart';

class TituloIntroducaoComponent extends StatelessWidget {
  const TituloIntroducaoComponent({required this.text, super.key, required this.text2});
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color:  ColorsApp.red, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Text(
            text2,
            style: TextStyle(color:  ColorsApp.red, fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

