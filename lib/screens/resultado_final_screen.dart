import 'package:Libraspet/components/area_text.dart';
import 'package:Libraspet/components/image_click.dart';
import 'package:Libraspet/controller.dart';
import 'package:Libraspet/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Result_Final_Screen extends StatelessWidget {
  final String text_final;

  const Result_Final_Screen({Key key, this.text_final}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(text_final);
    var altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AreaText(
                text: 'RELATÓRIO FINAL',
                altura: altura * 0.1,
                largura: largura,
                altura_text: altura * 0.05),
            Padding(
                padding: EdgeInsets.only(
                    right: largura * 0.05, left: largura * 0.05),
                child: Container(
                  child: SingleChildScrollView(
                    child: Text(
                      text_final,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                  width: largura,
                  height: altura * 0.5,
                )),
            Column(
              children: [
                ImageClick(
                    largura: largura * 0.2,
                    altura: altura * 0.12,
                    path: 'lib/assets/images/Imagem39.png',
                    function: () 
                    {
                      delete_file();
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>Home_Screen()), (Route<dynamic> route) => false);
                    },
                    padding: 0),
                Text('REINICIAR')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
