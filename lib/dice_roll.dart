import 'package:flutter/material.dart';
import 'package:dice_rolling/gradient_features.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget{
  
  const DiceRoll({super.key});
  
  State<DiceRoll> createState(){

    return _DiceRollstate();
  }
}

class _DiceRollstate extends State<DiceRoll>{
    void rollDice() {
      setState(() {
        final random=Random().nextInt(6)+1;
        assetimg='assets/images/dice-$random.png';
      });
  
}
  var assetimg='assets/images/dice-1.png';
@override
Widget build(context){
  return Column(
          children: [
             Image.asset(assetimg),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top:20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Click Here'),
            )
          ],
        );
}
}