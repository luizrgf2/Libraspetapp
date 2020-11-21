import 'package:Libraspet/screens/secrecao_nasal_screen.dart';
import 'package:Libraspet/screens/tempo_vomito_screen.dart';
import 'package:flutter/material.dart';
import '../components/image_click.dart';
import '../components/area_text.dart';
import '../controller.dart';

class Vomito_Screens extends StatelessWidget {
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
                text: 'VÔMITO',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            Column(
              children: [
                ImageClick(
                    largura: largura * 0.5,
                    altura: altura * 0.3,
                    path: 'lib/assets/images/Imagem19.png',
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
                      path: 'lib/assets/images/Imagem20.png',
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => TempoVomito_Screen()));
                      },
                      padding: 0,
                    ),
                  ],
                ),
                Column(
                  children: [
                    ImageClick(
                      largura: largura * 0.4,
                      altura: altura * 0.2,
                      path: 'lib/assets/images/Imagem21.png',
                      function: () {
                        write_in_file('Não sabe informar quando ocorreu');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Secrecao_screen()));
                      },
                      padding: 0,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: largura * 0.6, bottom: altura * 0.03),
              child: Column(
                children: [
                  ImageClick(
                    largura: largura * 0.3,
                    altura: altura * 0.2,
                    path: 'lib/assets/images/Imagem4.png',
                    function: () {
                      write_in_file('Não sabe informar se houve vômito');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => Secrecao_screen()));
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
          ],
        ),
      ),
    );
  }
}
