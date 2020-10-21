import 'package:flutter/material.dart';
import 'screens/agitated_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Agitated_Screen(),
      theme: ThemeData(canvasColor: Color.fromRGBO(40, 164, 68, 10)),
    );
  }
}
