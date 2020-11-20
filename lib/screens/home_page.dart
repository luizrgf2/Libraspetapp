import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:Libraspet/screens/afogado_screen.dart';
import 'package:Libraspet/screens/atropelado_screen.dart';
import 'package:Libraspet/screens/briga_screen.dart';
import 'package:Libraspet/screens/emergecy_screen.dart';
import 'package:Libraspet/screens/espuma_screen.dart';
import 'package:Libraspet/screens/mordeu_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
              child: Column(
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
                          function: () 
                          {

                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Afogador_Screen()));

                          },
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
                          function: () 
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Atropelado_Screen()));
                          },
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
                          function: () 
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Briga_Screen()));
                          },
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
                          function: () 
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Espuma_Screen()));
                          },
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
                    function: () 
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Mordeu_Screen()));
                    },
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
            Padding(
              padding:  EdgeInsets.only(left: largura* 0.5,top: altura*0.04),
              child: Column(
                children: [
                  ImageClick(
                    largura: largura * 0.2,
                    altura: altura * 0.14,
                    path: 'lib/assets/images/Imagem5.png',
                    function: () 
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Emergency_Screen()));
                    },
                    padding: largura*0.07,
                  ),
                  AreaText(
                      text: 'NENHUMA \nDAS OPÇÕES',
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
