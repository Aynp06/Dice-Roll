import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart';

const startalign = Alignment.topLeft;
const endalign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 108, 8, 174),
        color2 = const Color.fromARGB(255, 22, 7, 179);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startalign, end: endalign),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
