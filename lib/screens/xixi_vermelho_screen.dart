import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/screens/resultado_final_screen.dart';
import '../components/image_click.dart';
import 'package:flutter/material.dart';
import '../components/button_text.dart';
import '../controller.dart';

class Xixi_Vermelho_Screen extends StatelessWidget {
  String text_final;
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
            text: 'XIXI',
            altura: altura * 0.1,
            largura: largura,
            altura_text: altura * 0.05),
        ImageClick(
          largura: largura * 0.55,
          altura: altura * 0.35,
          path: 'lib/assets/images/Imagem32.png',
          function: null,
          padding: 0,
        ),
        AreaText(
            text: 'VERMELHO',
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
            altura_text: altura * 0.02),
        SizedBox(
          height: altura * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.035,
                  function: () 
                  async {
                                                  write_in_file('Xixi vemelho hoje');
                              text_final = await read_file();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Result_Final_Screen(text_final: text_final,)));
                  },
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'HOJE'),
            ),
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.035,
                  function: () async
                  {
                                                  write_in_file('Xixi vermelho há dias');
                              text_final = await read_file();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Result_Final_Screen(text_final: text_final,)));
                  },
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'DIAS'),
            ),
            Expanded(
              child: Button_text(
                  altura_text: altura * 0.001,
                  function: () async
                  {
                                                  write_in_file('Xixi vermelho há semanas');
                              text_final = await read_file();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Result_Final_Screen(text_final: text_final,)));
                  },
                  altura: altura * 0.09,
                  largura: largura * 0.3,
                  text: 'SEMANAS'),
            )
          ],
        ),
        Container(
          //padding: EdgeInsets.only(bottom: 2),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: largura * 0.6),
                  child: Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.3,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem4.png',
                        function: () async
                        {
                              write_in_file('Não sabe informar quando ocorreu');
                              text_final = await read_file();
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
        )
    ],
        ),
      ),
    );
  }
}
