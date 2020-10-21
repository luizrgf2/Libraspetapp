import 'package:flutter/material.dart';
import 'area_text.dart';

class Button_text extends StatelessWidget {
  final Function function;
  final double altura;
  final double largura;
  final String text;

  Button_text(
      {@required this.function,
      @required this.altura,
      @required this.largura,
      @required this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: function,
      child: Container(
        height: altura,
        width: largura,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(3)),
        child: AreaText(text: text, altura: altura, largura: largura),
      ),
    );
  }
}
