import 'package:Libraspet/screens/febre_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_Screen(),
      theme: ThemeData(canvasColor: Color.fromRGBO(40, 164, 68, 1)),
    );
  }
}
