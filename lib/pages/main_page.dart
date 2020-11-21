import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: Text("Dice Game"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: DicePage()
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceImage=1;

  void randomizeDart(){
    setState(() {
      diceImage=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: (){
                        randomizeDart();
                      },
                      child: Image.asset("images/dice$diceImage.png")) ,
                )
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: (){
                        print("World");
                      },
                      child: Image.asset("images/dice1.png")) ,
                )
            ),
          ],
        ),
      ),
    );
  }
}

