import 'package:flutter/material.dart';

class AreaText extends StatelessWidget {
  final Color color = Color.fromRGBO(255, 255, 255, 0.6);
  final String text;
  final double altura;
  final double largura;

  AreaText(
      {@required this.text, @required this.altura, @required this.largura});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: altura * 0.1, right: altura * 0.1),
      color: color,
      height: altura,
      width: largura,
      child: FittedBox(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
