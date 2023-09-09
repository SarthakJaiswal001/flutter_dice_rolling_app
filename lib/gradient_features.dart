import 'package:dice_rolling/dice_roll.dart';
import 'package:flutter/material.dart';

// class GradientFeatures extends StatelessWidget { //this is our own custom widget
//   const GradientFeatures({super.key, required this.colors});//this is a constructor which conmtains a named parameter which is compulsory to pass
//   //here we are passing gradient colors using named arguments
//   final List<Color> colors;//this is the list of type Color(widget) called as colors
//   @override
//   Widget build(context) { //build method return widget and it is compulsory to override build method because it will be called when our custom widget will be implemented
//     return Container( //container is also a widget so build is returning a widget
//       decoration:  BoxDecoration(
//           gradient: LinearGradient(
//               colors: colors)),
//       child: const Center(
//         child: ShowingImage(),
//       ),
//     );
//   }
// }



//this code below is taking positinal argument for the gradient color
class GradientFeatures extends StatelessWidget {
  //this is our own custom widget
  const GradientFeatures(this.color1, this.color2, this.color3,
      {super.key}); //this is a constructor which conmtains a named parameter which is compulsory to pass
  // ignore: prefer_typing_uninitialized_variables
  /*
  there is another type of constructor function we can create
  const GradientFeatures.purple({super.key}):color1=Color.white(),color2=Color.black(),color3=Color.grey();
  this type of constructor function whenever will be called have fixed values.
  It will be called from main.dart like this:
  GradientFeatures.purple()

  Similarly
  Image widget also has constructor function which make passing asset image more easier
  body:Image.asset('source',width:200,height:200),
  */
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(context) {
    //build method return widget and it is compulsory to override build method because it will be called when our custom widget will be implemented
    return Container(
      //container is also a widget so build is returning a widget
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color1, color2, color3])),
      child: Center(
          child: Container(
        child: DiceRoll(),
      )),
    );
  }
}


