import 'package:flutter/material.dart';

class SafAppModel{
  final String image;
  final String text;
  final Color color;

  SafAppModel({this.image, this.text, this.color});

}

final List<SafAppModel> safModel=[

  SafAppModel(
    image:"images/1.png",
    text:"My Bill",
    color: Colors.blueAccent
  ),

  SafAppModel(
      image:"images/4.png",
      text:"M-PESA",
      color: Colors.green
  ),

  SafAppModel(
      image:"images/3.png",
      text:"Tunukiwa",
      color: Colors.cyanAccent
  ),

  SafAppModel(
      image:"images/2.png",
      text:"My Data Usage",
      color: Colors.redAccent
  ),

  SafAppModel(
      image:"images/5.png",
      text:"Data & Calling plans",
      color: Colors.amberAccent
  ),

  SafAppModel(
      image:"images/6.png",
      text:"Platinum Plans",
      color: Colors.green
  ),

  SafAppModel(
      image:"images/7.png",
      text:"Services",
      color: Colors.orangeAccent
  ),

  SafAppModel(
      image:"images/8.png",
      text:"My Account",
      color: Colors.grey
  ),

  SafAppModel(
      image:"images/9.png",
      text:"Contact Us",
      color: Colors.lightBlueAccent
  ),


];