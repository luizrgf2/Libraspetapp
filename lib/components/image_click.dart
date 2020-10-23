import 'package:flutter/material.dart';
import 'area_text.dart';

class ImageClick extends StatelessWidget {
  final double largura;
  final double altura;
  final String path;
  final Function function;
  final double padding;

  ImageClick(
      {@required this.largura,
      @required this.altura,
      @required this.path,
      @required this.function,
      @required this.padding});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: padding),
          height: altura,
          width: largura,
          child: FlatButton(
              onPressed: function,
              child: Image.asset(
                path,
                fit: BoxFit.fill,
                scale: 0.7,
              )),
        ),
      ],
    );
  }
}
