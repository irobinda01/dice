import 'package:flutter/material.dart';
import 'dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(contex){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}