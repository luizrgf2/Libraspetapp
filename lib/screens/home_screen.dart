import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/button_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:Libraspet/screens/home_page.dart';
import 'package:Libraspet/screens/sobre_screen.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: altura * 0.06,
                right: largura * 0.05,
                left: largura * 0.05),
            child: AreaText(
                text: 'LIBRASPET',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
          ),
          ImageClick(
              largura: largura * 0.5,
              altura: altura * 0.3,
              path: 'lib/assets/images/Imagem40.png',
              function: null,
              padding: 0),
          Button_text(
              function: () 
              {

                Navigator.push(context, MaterialPageRoute(builder: (ctx) =>HomePage()));

              },
              altura: altura * 0.2,
              largura: largura * 0.7,
              text: 'O QUE\n ACONTECEU?',
              altura_text: 0),
          Padding(
            padding: EdgeInsets.only(bottom: altura * 0.1),
            child: Column(
              children: [
                Button_text(
                    function: () {},
                    altura: altura * 0.07,
                    largura: largura * 0.3,
                    text: 'COMO USAR',
                    altura_text: 0),
                Button_text(
                    function: () 
                    {

                      Navigator.push(context, MaterialPageRoute(builder: (context) {return Sobre_Screen();}));

                    },
                    altura: altura * 0.07,
                    largura: largura * 0.3,
                    text: 'QUEM SOMOS',
                    altura_text: 0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
