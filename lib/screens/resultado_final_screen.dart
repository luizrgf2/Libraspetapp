import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:flutter/material.dart';

class Result_Final_Screen extends StatelessWidget {
  final String text_final;

  const Result_Final_Screen({Key key, this.text_final}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AreaText(
                text: text_final,
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            Padding(
              padding:  EdgeInsets.only(right: largura * 0.05,left: largura * 0.05  ),
              child: AreaText(
                  text: '',
                  altura: altura * 0.5,
                  largura: largura,
                  altura_text: altura * 0.05),
            ),
            Column(
              children: [
                ImageClick(largura: largura *0.2 , altura: altura*0.12, path: 'lib/assets/images/Imagem39.png', function: (){}, padding: 0),
                Text('REINICIAR')
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
