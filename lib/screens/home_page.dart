import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double largura = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: altura * 0.0001),
              child: AreaText(
                  text: 'EMERGÊNCIAS',
                  altura: altura * 0.1,
                  largura: largura,
                  altura_text: altura * 0.05),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: altura * 0.0001),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ImageClick(
                          largura: largura * 0.5,
                          altura: altura * 0.15,
                          path: 'lib/assets/images/Imagem6.png',
                          function: () {},
                          padding: altura * 0.2 * 0.3,
                        ),
                        AreaText(
                            text: 'AFOGADO',
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
                          altura: altura * 0.15,
                          path: 'lib/assets/images/Imagem7.png',
                          function: () {},
                          padding: altura * 0.2 * 0.3,
                        ),
                        AreaText(
                            text: 'ATROPELADO',
                            altura: altura * 0.07,
                            largura: largura * 0.3,
                            altura_text: altura * 0.003),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: altura * 0.000000000001),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ImageClick(
                          largura: largura * 0.4,
                          altura: altura * 0.13,
                          path: 'lib/assets/images/Imagem8.png',
                          function: () {},
                          padding: 0,
                        ),
                        AreaText(
                            text: 'BRIGA',
                            altura: altura * 0.07,
                            largura: largura * 0.3,
                            altura_text: altura * 0.045),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ImageClick(
                          largura: largura * 0.45,
                          altura: altura * 0.12,
                          path: 'lib/assets/images/Imagem9.png',
                          function: () {},
                          padding: altura * 0.02,
                        ),
                        AreaText(
                            text: 'ESPUMA NA\n BOCA',
                            altura: altura * 0.07,
                            largura: largura * 0.3,
                            altura_text: altura * 0.003),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0.001),
              child: Column(
                children: [
                  ImageClick(
                    largura: largura * 0.3,
                    altura: altura * 0.135,
                    path: 'lib/assets/images/Imagem10.png',
                    function: () {},
                    padding: altura * 0.2 * 0.1,
                  ),
                  AreaText(
                      text: 'MORDEU\n ANIMAL',
                      altura: altura * 0.07,
                      largura: largura * 0.3,
                      altura_text: altura * 0.003),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.3,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem4.png',
                        function: () {},
                        padding: altura * 0.1,
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
                        function: () {},
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
          ],
        ),
      ),
    );
  }
}
