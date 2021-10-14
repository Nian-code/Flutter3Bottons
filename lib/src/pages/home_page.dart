// ignore_for_file: prefer_const_constructors


import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  int contador = 0;
  final textStyle = TextStyle(fontSize: 20);

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
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Números de clicks:",
            style: textStyle),
          Text(
            '$contador', 
            style: textStyle)],
          )
        ), 
        floatingActionButton:  
              FloatingActionButton(
                child:Icon(
                  Icons.add,
                ),
                onPressed: () => {
                  setState(() => contador++)
                  }
               ,),
        floatingActionButtonLocation: 
              FloatingActionButtonLocation.centerFloat
    );
  }
}
