import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:flutter/material.dart';

class Coco_Screen extends StatelessWidget {
  const Coco_Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AreaText(
              text: 'COCÔ',
              altura: altura * 0.1,
              largura: largura,
              altura_text: altura * 0.05),
          Padding(
            padding: EdgeInsets.only(top: altura * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ImageClick(
                      largura: largura * 0.4,
                      altura: altura * 0.2,
                      path: 'lib/assets/images/Imagem26.png',
                      function: () {},
                      padding: 0,
                    ),
                    AreaText(
                        text: 'NORMAL',
                        altura: altura * 0.07,
                        largura: largura * 0.3,
                        altura_text: altura * 0.02),
                  ],
                ),
                Column(
                  children: [
                    ImageClick(
                      largura: largura * 0.4,
                      altura: altura * 0.2,
                      path: 'lib/assets/images/Imagem27.png',
                      function: () {},
                      padding: 0,
                    ),
                    AreaText(
                        text: 'DIARRÉIA',
                        altura: altura * 0.07,
                        largura: largura * 0.3,
                        altura_text: altura * 0.02),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  ImageClick(
                    largura: largura * 0.3,
                    altura: altura * 0.2,
                    path: 'lib/assets/images/Imagem4.png',
                    function: () {},
                    padding: altura * 0.2 * 0.5,
                  ),
                  AreaText(
                      text: 'NÃO SEI\n DIZER',
                      altura: altura * 0.07,
                      largura: largura * 0.3,
                      altura_text: altura * 0.004),
                ],
              ),
              Column(
                children: [
                  ImageClick(
                    largura: largura * 0.4,
                    altura: altura * 0.2,
                    path: 'lib/assets/images/Imagem5.png',
                    function: () {},
                    padding: altura * 0.2 * 0.6,
                  ),
                  AreaText(
                      text: 'NENHUMA DAS\n OPÇÕES',
                      altura: altura * 0.07,
                      largura: largura * 0.4,
                      altura_text: altura * 0.001),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
