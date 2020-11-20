import 'package:Libraspet/screens/bebeu_veneno_screen.dart';
import 'package:Libraspet/screens/comida_screen.dart';
import 'package:Libraspet/screens/veneno_na_pele_screen.dart';
import 'package:flutter/material.dart';
import '../components/image_click.dart';
import '../components/area_text.dart';
import '../controller.dart';

class Veneno_Screens extends StatelessWidget {
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
                text: 'VENENO',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem17.png',
                        function: () 
                        {
                                        
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Napele_Screen()));
                        },
                        padding: 0),
                    AreaText(
                        text: 'VENENO NA\n PELE',
                        altura: altura * 0.07,
                        largura: largura * 0.3,
                        altura_text: altura * 0.01),
                  ],
                ),
                                Column(
                  children: [
                    ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem16.png',
                        function: () 
                        {
                                        
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => BebeuVeneno_Screen()));
                        },
                        padding: 0),
                    AreaText(
                        text: 'BEBEU\n VENENO',
                        altura: altura * 0.07,
                        largura: largura * 0.3,
                        altura_text: altura * 0.01),
                  ],
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: altura*0.02),
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
                                        write_in_file('Não sabe informar se houve envenenamento');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Comida_Screen()));
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
                                builder: (ctx) =>Comida_Screen()));
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
