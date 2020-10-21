import 'package:flutter/material.dart';

class AreaText extends StatelessWidget {
  final Color color = Color.fromRGBO(255, 255, 255, 0.6);
  final String text;
  final double altura;
  final double largura;
  final double altura_text;

  AreaText(
      {@required this.text,
      @required this.altura,
      @required this.largura,
      @required this.altura_text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: altura_text, right: altura_text),
      color: color,
      height: altura,
      width: largura,
      child: FittedBox(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
