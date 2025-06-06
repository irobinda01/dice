import 'package:flutter/material.dart';
import 'dart:math';
import 'custom_image.dart';

final randomNum = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  int activeDice = randomNum.nextInt(6) + 1;

  void roller(){
    setState(() {
      activeDice = randomNum.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Hello World",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40
          ),
        ), 
        SizedBox(height: 30,),
        CustomImage("assets/images/dice-$activeDice.png"),
        TextButton(
          onPressed: roller, 
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 20,
            )
          ),
          child: Text("Roll Dice"),
        )
      ],
    );
  }
}