import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/button_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:flutter/material.dart';

class Secrecao_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AreaText(
              text: 'SECREÇÃO NASAL',
              altura: altura * 0.1,
              largura: largura,
              altura_text: altura * 0.05),
          ImageClick(
            largura: largura * 0.5,
            altura: altura * 0.2,
            path: 'lib/assets/images/Imagem22.png',
            function: null,
            padding: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageClick(
                largura: largura * 0.3,
                altura: altura * 0.3,
                path: 'lib/assets/images/Imagem23.png',
                function: null,
                padding: 0,
              ),
              ImageClick(
                largura: largura * 0.3,
                altura: altura * 0.3,
                path: 'lib/assets/images/Imagem24.png',
                function: null,
                padding: 0,
              ),
              ImageClick(
                largura: largura * 0.3,
                altura: altura * 0.3,
                path: 'lib/assets/images/Imagem25.png',
                function: null,
                padding: 0,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Button_text(
                    altura_text: altura * 0.025,
                    function: () {},
                    altura: altura * 0.09,
                    largura: largura * 0.3,
                    text: 'AMARELA'),
              ),
              Expanded(
                child: Button_text(
                    altura_text: altura * 0.02,
                    function: () {},
                    altura: altura * 0.09,
                    largura: largura * 0.3,
                    text: 'VERMELHA'),
              ),
              Expanded(
                child: Button_text(
                    altura_text: altura * 0.001,
                    function: () {},
                    altura: altura * 0.09,
                    largura: largura * 0.3,
                    text: 'TRANSPARENTE'),
              )
            ],
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
