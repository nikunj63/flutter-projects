import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  Function()? onTap;
   MyButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap:onTap ,
    child:Container(
      padding:const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration:BoxDecoration(color: Colors.black ,
      borderRadius:BorderRadius.circular(100) ),
      child:  const Center(
        child: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16
            ),
          ),
      ),
    ),
    );
  }
}