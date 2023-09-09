import 'package:dice_rolling/gradient_features.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: const Text(
            'Rolling Dice',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: const Center(
          child:GradientFeatures(
                    Color.fromARGB(137, 160, 119, 119),
                    Color.fromARGB(255, 144, 60, 60),
                    Color.fromARGB(255, 180, 162, 162)
                    ), 
        )
            )
            )
            );
            