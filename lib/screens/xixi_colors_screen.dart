import 'package:Libraspet/screens/febre_screen.dart';
import 'package:Libraspet/screens/xixi_amarelo_screen.dart';
import 'package:Libraspet/screens/xixi_trans_screen.dart';
import 'package:Libraspet/screens/xixi_vermelho_screen.dart';
import 'package:flutter/material.dart';
import '../components/image_click.dart';
import '../components/area_text.dart';
import '../controller.dart';

class Xixi_Color_Screens extends StatelessWidget {
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
              
              children: [
                Expanded(
                                child: Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem35.png',
                        function: () 
                        {
                                                
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Xixi_Trans_Screen()));
                        },
                        padding: 0,
                      ),
                      AreaText(
                          text: 'TRANSPARENTE',
                          altura: altura * 0.07,
                          largura: largura * 0.3,
                          altura_text: altura * 0.01),
                    ],
                  ),
                ),
                Expanded(
                                child: Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem36.png',
                        function: () 
                        {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Xixi_Amarelo_Screen()));
                        },
                        padding: 0,
                      ),
                      AreaText(
                          text: 'AMARELO',
                          altura: altura * 0.07,
                          largura: largura * 0.25,
                          altura_text: altura * 0.035),
                    ],
                  ),
                ),
                Expanded(
                                child: Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem37.png',
                        function: () 
                        {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Xixi_Vermelho_Screen()));
                        },
                        padding: 0,
                      ),
                      AreaText(
                          text: 'VERMELHO',
                          altura: altura * 0.07,
                          largura: largura * 0.25,
                          altura_text: altura * 0.025),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: altura * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.3,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem4.png',
                        function: () 
                        {
                                                  
                              write_in_file('Não sabe informar a cor da urina');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Febre_Screens()));
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
                        function: () 
                        {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Febre_Screens()));
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
