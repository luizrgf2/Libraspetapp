import 'package:Libraspet/screens/agitated_screen.dart';
import 'package:Libraspet/screens/alert_screen.dart';
import 'package:Libraspet/screens/quiet_screen.dart';
import 'package:Libraspet/screens/veneno_screen.dart';

import '../components/image_click.dart';
import 'package:flutter/material.dart';
import '../components/area_text.dart';
import '../components/image_click.dart';
import '../controller.dart';

class Emergency_Screen extends StatelessWidget {
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
                text: 'COMPORTAMENTO DO ANIMAL',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            ImageClick(
              largura: largura * 0.4,
              altura: altura * 0.2,
              path: 'lib/assets/images/Imagem1.png',
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => Alert_Screen()));
              },
              padding: altura * 0.2 * 0.1,
            ),
            AreaText(
                text: 'ALERTA',
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
                        path: 'lib/assets/images/Imagem2.png',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Quiet_Screen()));
                        },
                        padding: altura * 0.2 * 0.1,
                      ),
                      AreaText(
                          text: 'QUIETO',
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
                        path: 'lib/assets/images/Imagem3.png',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Agited_Screen()));
                        },
                        padding: altura * 0.2 * 0.1,
                      ),
                      AreaText(
                          text: 'AGITADO',
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
                            write_in_file('Não sabe informar o comportamento do animal');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => Veneno_Screens()));
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
                                    builder: (ctx) => Veneno_Screens()));
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
