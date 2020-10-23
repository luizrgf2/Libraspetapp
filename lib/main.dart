import 'package:flutter/material.dart';
import 'screens/mordeu_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (Mordeu_Screen()),
      theme: ThemeData(canvasColor: Color.fromRGBO(40, 164, 68, 10)),
    );
  }
}
