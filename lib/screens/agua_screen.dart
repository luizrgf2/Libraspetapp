import 'package:Libraspet/components/area_text.dart';
import '../components/image_click.dart';
import 'package:flutter/material.dart';
import '../components/button_text.dart';

class Agua_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
              child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
        AreaText(
            text: 'ÀGUA',
            altura: altura * 0.1,
            largura: largura,
            altura_text: altura * 0.08),
        ImageClick(
          largura: largura * 0.55,
          altura: altura * 0.35,
          path: 'lib/assets/images/Imagem18.png',
          function: null,
          padding: 0,
        ),
        SizedBox(
          height: altura * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.035,
                  function: () {},
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'MUITO'),
            ),
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.02,
                  function: () {},
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'NORMAL'),
            ),
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.025,
                  function: () {},
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'POUCO'),
            )
          ],
        ),
        Container(
          //padding: EdgeInsets.only(bottom: 2),
          child: Row(
            children: [
              Expanded(
                child: Column(
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
        )
    ],
        ),
      ),
    );
  }
}
