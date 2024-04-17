import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextEditingController Controller ;
  final String hintText;
  final bool obscureText;
  
  const Mytextfield({
    // ignore: non_constant_identifier_names
    super.key,required this.Controller, required this.hintText, required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
       padding:
       const EdgeInsets.symmetric(horizontal:25.0),

         child: TextField(
          controller:Controller,
          obscureText:obscureText ,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide:BorderSide(color: Colors.white) 
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
            ),
            fillColor: Colors.white54,
            filled: true,
            hintText:hintText,
        ),
      ),
        );
  
  }
}