import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  } // createstate doesnot take a value but returns a value, returns a state object
}

class _DiceRollerState extends State<DiceRoller> {
  var diceroll = 2; //

  void rollDice() {
    setState(() // tells flutter that it should re-execute built function
        {
      diceroll = Random().nextInt(6) + 1; // 0 to 5 ma ek jodxa i.e= 1 to 6
      // now it will dynamically store the random number stored in diceroll variable
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceroll.png', width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 244, 245, 247),
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll the Dice'),
        )
      ],
    );
  }
}
// underscore is used to make a class private and use inside the file only and another file wont be able to access
