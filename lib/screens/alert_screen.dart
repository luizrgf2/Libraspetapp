import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/screens/veneno_screen.dart';
import '../components/image_click.dart';
import 'package:flutter/material.dart';
import '../components/button_text.dart';
import '../controller.dart';

class Alert_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
              child: Column(
    children: [
        AreaText(
            text: 'COMPORTAMENTO DO ANIMAL',
            altura: altura * 0.1,
            largura: largura,
            altura_text: altura * 0.05),
        ImageClick(
          largura: largura * 0.55,
          altura: altura * 0.35,
          path: 'lib/assets/images/Imagem1.png',
          function: null,
          padding: 0,
        ),
        AreaText(
            text: 'ALERTA',
            altura: altura * 0.07,
            largura: largura * 0.3,
            altura_text: altura * 0.02),
        SizedBox(
          height: altura * 0.01,
        ),
        AreaText(
            text: 'QUANDO?',
            altura: altura * 0.07,
            largura: largura * 0.3,
            altura_text: altura * 0.01),
        SizedBox(
          height: altura * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.02,
                  function: () 
                  {
                        write_in_file('Alerta hoje');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Veneno_Screens()));
                  },
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'HOJE'),
            ),
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.02,
                  function: () 
                  {
                        write_in_file('Alerta há dias');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Veneno_Screens()));
                  },
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'DIAS'),
            ),
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.001,
                  function: () 
                  {
                                            write_in_file('Alerta há semanas');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Veneno_Screens()));
                  },
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'SEMANAS'),
            )
          ],
        ),
        Container(
          //padding: EdgeInsets.only(bottom: 2),
          child: Padding(
            padding:  EdgeInsets.only(right: largura*0.6),
            child: Column(
              children: [
                ImageClick(
                  largura: largura * 0.3,
                  altura: altura * 0.2,
                  path: 'lib/assets/images/Imagem4.png',
                  function: () 
                  {
                                            write_in_file('Não sabe informar a frequência do comportamento');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => Veneno_Screens()));
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
