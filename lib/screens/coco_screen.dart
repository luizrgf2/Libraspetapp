import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:Libraspet/screens/cores_coco_screen.dart';
import 'package:Libraspet/screens/diarreia_screen.dart';
import 'package:flutter/material.dart';

import '../controller.dart';

class Coco_Screen extends StatelessWidget {
  const Coco_Screen({Key key}) : super(key: key);

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
                text: 'COCÔ',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            Padding(
              padding: EdgeInsets.only(top: altura * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem26.png',
                        function: () 
                        {
                                                
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => CocoCores_Screen()));
                        },
                        padding: 0,
                      ),
                      AreaText(
                          text: 'NORMAL',
                          altura: altura * 0.07,
                          largura: largura * 0.3,
                          altura_text: altura * 0.02),
                    ],
                  ),
                  Column(
                    children: [
                      ImageClick(
                        largura: largura * 0.4,
                        altura: altura * 0.2,
                        path: 'lib/assets/images/Imagem27.png',
                        function: () 
                        {
                                                
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => Diarreia_Screen()));
                        },
                        padding: 0,
                      ),
                      AreaText(
                          text: 'DIARRÉIA',
                          altura: altura * 0.07,
                          largura: largura * 0.3,
                          altura_text: altura * 0.02),
                    ],
                  )
                ],
              ),
            ),
            Padding(
                      padding: EdgeInsets.only(right: largura * 0.6,bottom: altura * 0.03),
                      child: Column(
                        children: [
                          ImageClick(
                            largura: largura * 0.3,
                            altura: altura * 0.2,
                            path: 'lib/assets/images/Imagem4.png',
                            function: () {
                              write_in_file('Não sabe informar consistência das fezes');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => CocoCores_Screen()));
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
