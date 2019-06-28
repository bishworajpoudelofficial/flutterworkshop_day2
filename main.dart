import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Game'),
        ),
        body: DiceGame(),
      ),
    ),
  );
}

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int diceNumber1 =1;
  int diceNumber2 =1;


  void rollDice(){
    setState(() {
      diceNumber1 = 1+ Random().nextInt(6); 
      diceNumber2 = 1+ Random().nextInt(6); 
    });
  }
   
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          Image.asset("img/$diceNumber1.png"),
          Image.asset("img/$diceNumber2.png"),
          RaisedButton(
            child: Text('Roll Dice'),
            onPressed: rollDice,
          )
        ],
      ),
    );
  }
}
