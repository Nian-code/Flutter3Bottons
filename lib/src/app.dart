// ignore_for_file: prefer_const_constructors

import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: HomePage(),
     debugShowCheckedModeBanner: false,
   );
  }
}