import 'package:Libraspet/components/image_click.dart';
import 'package:flutter/material.dart';
import '../components/area_text.dart';

class Comidas_Screen extends StatelessWidget {
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
              text: 'COMIDA',
              altura: altura * 0.1,
              largura: largura,
              altura_text: altura * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ImageClick(
                    largura: largura * 0.4,
                    altura: altura * 0.2,
                    path: 'lib/assets/images/Imagem14.png',
                    function: () {},
                    padding: altura * 0.2 * 0.1,
                  ),
                  AreaText(
                      text: 'RAÇÃO',
                      altura: altura * 0.05,
                      largura: largura * 0.3,
                      altura_text: altura * 0.04),
                ],
              ),
              Column(
                children: [
                  ImageClick(
                    largura: largura * 0.4,
                    altura: altura * 0.2,
                    path: 'lib/assets/images/Imagem15.png',
                    function: () {},
                    padding: altura * 0.2 * 0.1,
                  ),
                  AreaText(
                      text: 'COMIDA\n HUMANA',
                      altura: altura * 0.07,
                      largura: largura * 0.3,
                      altura_text: altura * 0.001),
                ],
              ),
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(left: largura * 0.05, right: largura * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
          ),
        ],
      ),
    );
  }
}
