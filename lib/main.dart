import 'package:flutter/material.dart';
import 'package:mvpfun/pages/tela_inicial.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moturb',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: TelaInicial(),
    );
  }
}