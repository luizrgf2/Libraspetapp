import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/button_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:Libraspet/screens/coco_screen.dart';
import 'package:Libraspet/screens/screcao_amarela_screen.dart';
import 'package:Libraspet/screens/secrecao_transparente_screen.dart';
import 'package:Libraspet/screens/secrecao_vermelha_screen.dart';
import 'package:flutter/material.dart';

import '../controller.dart';

class Secrecao_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SafeArea(
        child: Column(
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
                  function: (){
                                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => SecreAmarela_Screen()));
                  },
                  padding: 0,
                ),
                ImageClick(
                  largura: largura * 0.3,
                  altura: altura * 0.3,
                  path: 'lib/assets/images/Imagem24.png',
                  function: (){
                                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => SecreVermelha_Screen()));
                  },
                  padding: 0,
                ),
                ImageClick(
                  largura: largura * 0.3,
                  altura: altura * 0.3,
                  path: 'lib/assets/images/Imagem25.png',
                  function: (){
                                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => SecreTrans_Screen()));
                  },
                  padding: 0,
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(right: largura*0.05,left: largura*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AreaText(
                          text: 'Amarela',
                          altura: altura * 0.07,
                          largura: largura * 0.2,
                          altura_text: altura * 0.02),
                  AreaText(
                          text: 'Vermelha',
                          altura: altura * 0.07,
                          largura: largura * 0.2,
                          altura_text: altura * 0.02),
                  AreaText(
                          text: 'Transparente',
                          altura: altura * 0.07,
                          largura: largura * 0.2,
                          altura_text: altura * 0.009)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: altura * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.3,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem4.png',
                        function: () {
                          write_in_file('Não sabe informar se há secreção');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Coco_Screen()));
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
                  Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem5.png',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Coco_Screen()));
                        },
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
            )
          ],
        ),
      ),
    );
  }
}
