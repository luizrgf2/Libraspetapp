import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/screens/muita_agua_screen.dart';
import 'package:Libraspet/screens/pouca_agua_screen.dart';
import 'package:Libraspet/screens/vomito_screen.dart';
import '../components/image_click.dart';
import 'package:flutter/material.dart';
import '../components/button_text.dart';
import '../controller.dart';

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
              child: Column(
                children: [
                  Image.asset('lib/assets/images/Imagem43.png',height: altura * 0.1,),
                  Button_text(
                      altura_text: altura * 0.035,
                      function: () 
                      {
                                                             
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => MuitaAgua_Screen()));
                      },
                      altura: altura * 0.09,
                      largura: largura * 0.3,
                      text: 'MUITO'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset('lib/assets/images/Imagem44.png',height: altura * 0.1,),
                  Button_text(
                      altura_text: altura * 0.02,
                      function: () 
                      {
                                    
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Vomito_Screens()));
                      },
                      altura: altura * 0.09,
                      largura: largura * 0.3,
                      text: 'NORMAL'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset('lib/assets/images/Imagem45.png',height: altura * 0.1,),
                  Button_text(
                      altura_text: altura * 0.025,
                      function: () 
                      {
                                                             
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => PoucaAgua_Screen()));
                      },
                      altura: altura * 0.09,
                      largura: largura * 0.3,
                      text: 'POUCO'),
                ],
              ),
            )
          ],
        ),
        Container(
          //padding: EdgeInsets.only(bottom: 2),
          child: Padding(
            padding:  EdgeInsets.only(right: largura * 0.6,bottom: altura * 0.04),
            child: Column(
              children: [
                ImageClick(
                  largura: largura * 0.3,
                  altura: altura * 0.2,
                  path: 'lib/assets/images/Imagem4.png',
                  function: () 
                  {
                                                         write_in_file('Não sabe informar quantidade de água');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Vomito_Screens()));
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
        )
    ],
        ),
      ),
    );
  }
}
