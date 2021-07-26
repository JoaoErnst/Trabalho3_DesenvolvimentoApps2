import 'dart:html';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
  
}
class CalculadoraState extends State<Calculadora>{
  @override
  Widget build(BuildContext context) {
    var materialButton = new MaterialButton(
                   child: new Text("Calcular"),
                   color: Colors.blueGrey,
                   onPressed: calculos);
    return  Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora Simples"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Resultado: soma: $resultadoSoma, subtração: $resultadoSub, divisão: $resultadoDiv, multiplicação: $resultadoMulti",
            style: new TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
           ),
            //(input 1)
             new TextField(
             keyboardType: TextInputType.number,
             decoration: new InputDecoration(hintText: "Informe o valor 1"),
             controller: t1,
             ),
             //(input 2)
             new TextField(
               keyboardType: TextInputType.number,
               decoration: new InputDecoration(hintText: "Informe o valor 2"),
               controller: t2,
             ), 
             // linha (row)
             new Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 materialButton
               ],
             )
         ],
        ),
      ) ,       
    );

  }
  //variavéis
  var valor1;
  var valor2;
  var resultadoSoma;
  var resultadoSub;
  var resultadoDiv;
  var resultadoMulti;
  

  TextEditingController t1 = new TextEditingController(text:"");
  TextEditingController t2 = new TextEditingController(text: "");

  //calculos
  void calculos(){
    setState(() {
      valor1 = num.parse(t1.text);
      valor2 = num.parse(t2.text);
      resultadoSoma = valor1 + valor2;
      resultadoSub = valor1 - valor2;
      resultadoDiv = valor1 / valor2;
      resultadoMulti = valor1 * valor2;
     
    });
  } 
  
}