import 'package:flutter/material.dart';
import '../components/image_click.dart';
import '../components/area_text.dart';

class Xixi_Screens extends StatelessWidget {
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
              text: 'XIXI',
              altura: altura * 0.1,
              largura: largura,
              altura_text: altura * 0.05),
          Column(
            children: [
              ImageClick(
                  largura: largura * 0.5,
                  altura: altura * 0.3,
                  path: 'lib/assets/images/Imagem32.png',
                  function: null,
                  padding: 0),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  ImageClick(
                    largura: largura * 0.4,
                    altura: altura * 0.2,
                    path: 'lib/assets/images/Imagem33.png',
                    function: () {},
                    padding: 0,
                  ),
                  AreaText(
                      text: 'MUITO',
                      altura: altura * 0.07,
                      largura: largura * 0.2,
                      altura_text: altura * 0.02),
                ],
              ),
              Column(
                children: [
                  ImageClick(
                    largura: largura * 0.4,
                    altura: altura * 0.2,
                    path: 'lib/assets/images/Imagem34.png',
                    function: () {},
                    padding: 0,
                  ),
                  AreaText(
                      text: 'POUCO',
                      altura: altura * 0.07,
                      largura: largura * 0.2,
                      altura_text: altura * 0.02),
                ],
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
