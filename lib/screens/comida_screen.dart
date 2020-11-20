import 'package:Libraspet/screens/agua_screen.dart';
import 'package:Libraspet/screens/comemuito_screen.dart';
import 'package:Libraspet/screens/comida_humana_animal_screen.dart';
import 'package:Libraspet/screens/naocome_screen.dart';

import '../components/image_click.dart';
import 'package:flutter/material.dart';
import '../components/area_text.dart';
import '../components/image_click.dart';
import '../controller.dart';

class Comida_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AreaText(
                text: 'COMIDA',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            ImageClick(
              largura: largura * 0.4,
              altura: altura * 0.2,
              path: 'lib/assets/images/Imagem11.png',
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => Naocome_Screen()));
              },
              padding: altura * 0.2 * 0.1,
            ),
            AreaText(
                text: 'NÃO COME',
                altura: altura * 0.05,
                largura: largura * 0.3,
                altura_text: altura * 0.02),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem12.png',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Comidas_Screen()));
                        },
                        padding: altura * 0.2 * 0.1,
                      ),
                      AreaText(
                          text: 'COME BEM',
                          altura: altura * 0.07,
                          largura: largura * 0.3,
                          altura_text: altura * 0.02),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem13.png',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Comemuito_Screen()));
                        },
                        padding: altura * 0.2 * 0.1,
                      ),
                      AreaText(
                          text: 'COME MUITO',
                          altura: altura * 0.07,
                          largura: largura * 0.3,
                          altura_text: altura * 0.02),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: altura * 0.08),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ImageClick(
                          largura: largura * 0.3,
                          altura: altura * 0.2,
                          path: 'lib/assets/images/Imagem4.png',
                          function: () {
                            write_in_file('Não sabe informar sobre a alimentação');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => Comidas_Screen()));
                          },
                          padding: altura * 0.2 * 0.5,
                        ),
                        AreaText(
                            text: 'NÃO SEI\n DIZER',
                            altura: altura * 0.07,
                            largura: largura * 0.3,
                            altura_text: altura * 0.004),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ImageClick(
                          largura: largura * 0.4,
                          altura: altura * 0.2,
                          path: 'lib/assets/images/Imagem5.png',
                          function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => Comidas_Screen()));
                          },
                          padding: altura * 0.2 * 0.6,
                        ),
                        AreaText(
                            text: 'NENHUMA DAS\n OPÇÕES',
                            altura: altura * 0.07,
                            largura: largura * 0.4,
                            altura_text: altura * 0.001),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
