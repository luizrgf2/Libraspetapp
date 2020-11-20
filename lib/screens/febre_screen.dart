import 'package:Libraspet/screens/febre_sim_screen.dart';
import 'package:Libraspet/screens/resultado_final_screen.dart';
import 'package:flutter/material.dart';
import '../components/image_click.dart';
import '../components/area_text.dart';
import '../controller.dart';

class Febre_Screens extends StatelessWidget {
  
  String text_final;
  
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
                text: 'FEBRE',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            Column(
              children: [
                ImageClick(
                    largura: largura * 0.5,
                    altura: altura * 0.3,
                    path: 'lib/assets/images/Imagem38.png',
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
                      function: () 
                      {
                              
                              
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Febre_Sim_Screen()));
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
                      function: () async
                      {
                                                      write_in_file('Não sabe informar quando ocorreu');
                              text_final = await Future.delayed(Duration(seconds: 1),(){

                                return read_file();

                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Result_Final_Screen(text_final: text_final,)));
                      },
                      padding: 0,
                    ),
                  ],
                )
              ],
            ),
           Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: largura * 0.6, bottom: altura*0.03),
                      child: Column(
                        children: [
                          ImageClick(
                            largura: largura * 0.3,
                            altura: altura * 0.2,
                            path: 'lib/assets/images/Imagem4.png',
                            function: () async {
                              write_in_file('Não sabe informar se houve febre');
                              text_final = await Future.delayed(Duration(seconds: 1),(){

                                return read_file();

                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Result_Final_Screen(text_final: text_final,)));
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
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
