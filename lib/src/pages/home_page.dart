// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  final textStyle = TextStyle(fontSize: 20);

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Title in appbar"),
      centerTitle: true,
      elevation: 10,
    ),
    body:
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Números de clicks:",
            style: textStyle),
          Text(
            '$contador',
            style: textStyle)],
          )
        ),
        floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
            FloatingActionButton( 
              child: Icon(Icons.exposure_zero ),
              onPressed: _reset),
          Row(
            children: [  
            FloatingActionButton( 
              child: Icon(Icons.remove ),
              onPressed: _sustraer ),
            SizedBox(width: 10,),
            FloatingActionButton( 
              child: Icon(Icons.add ), 
              onPressed: _agregar )
          ],),
        ],
      );
  }

  void _agregar() {
    setState(() => contador++ );
  }

  void _sustraer() {
    if (contador != 0) {
      setState(() => contador-- );  
    }
  }

  void _reset() {
    setState(() => contador = 0 );
  }

}
