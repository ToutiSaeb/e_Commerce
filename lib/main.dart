import 'package:flutter/material.dart';
import 'package:mini_projet1/homepage.dart';
import 'package:mini_projet1/mainpage.dart';

void main(){
  runApp(mainapp());
}
class mainapp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: mainpage(),
    );
  }
}