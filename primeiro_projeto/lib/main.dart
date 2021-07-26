import 'package:flutter/material.dart';
import 'package:primeiro_projeto/Calculadora.dart';

void main() {
  runApp(CalculadoraSimples());
}
class CalculadoraSimples extends StatelessWidget{
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora Básica",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Calculadora(),
    );
  }

}