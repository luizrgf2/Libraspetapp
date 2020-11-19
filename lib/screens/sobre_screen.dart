import 'package:Libraspet/components/image_click.dart';
import 'package:flutter/material.dart';

class Sobre_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double altura =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                height: altura * 0.95,
                width: largura * 0.95,
                color: Color.fromRGBO(255, 255, 255, 0.6),
              ),
            ),
            Center(
              child: Container(
                width: largura * 0.95,
                height: altura * 0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Text(
                              'O projeto LibrasPet foi desenvolvido pelos alunos Gustavo Ferraz Gonçalves, Maria Laura Pereira de Melo, Gabriel Victor Vieira Porto, Isabela Viana Campos Oliveira, Caio Henrique Padilha Santana Gabriel Marra Mateus, Júlio Augusto de Souza Silva Melo, acadêmicos do curso de Medicina Veterinária – UNIPAM como parte da disciplina de Projeto Integrador IV, tendo como orientador o Prof. Dr.  Sady Alexis Chavauty Valdes. O projeto tem como intuito incluir deficientes auditivos na rotina clinica do Medico Veterinário. O aplicativo LibrasPet é a continuação do projeto e visa aumentar a inclusão de deficientes auditivos.\n\nO aplicativo foi desenvolvido pelas seguintes pessoas:\n\nIdealizadores: Andressa Lima Canedo e Guilherme Luís Ferreira Ribeiro (acadêmicos do curso de Medicina Veterinária - UNIPAM)\nProgramador: Luiz Ricardo Gonçalves Felipe (acadêmico do curso de Engenharia Eletrônica - UFU)\nNarrador: José Enilson (Locutor profissional)\nIlustradora: Skarllat Pereira Salvador (acadêmica do curso de arquitetura e urbanismo – UFU)\nVocê pode acessar o Instagram do Projeto pelo link abaixoInstagram: https://www.instagram.com/libraspet/',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      width: largura * 0.90,
                      height: altura * 0.70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageClick(
                            largura: largura * 0.4,
                            altura: altura * 0.2,
                            path: 'lib/assets/images/Imagem41.png',
                            function: null,
                            padding: 0),
                        ImageClick(
                            largura: largura * 0.2,
                            altura: altura * 0.17,
                            path: 'lib/assets/images/Imagem42.png',
                            function: null,
                            padding: 0),
                      ],
                    )
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
