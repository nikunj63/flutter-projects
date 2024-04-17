import 'package:flutter/material.dart';
import 'package:moyemoye/Loginpage.dart';
import 'package:moyemoye/my_button.dart';
import 'package:moyemoye/my_textfield.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  //text editing controllers
  final usernamecontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
  final confirmPasswordcontroller=TextEditingController();
  void signuppage(){}
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            //username textfield
            Mytextfield(
              Controller: usernamecontroller,
             hintText: 'Username',
             obscureText: false,
            ),

            //password textfield

            Mytextfield(
              Controller:passwordcontroller, 
              hintText: 'Password',
               obscureText: true,
               ),
               Mytextfield(
                Controller:confirmPasswordcontroller ,
                 hintText: 'confirmPassword', 
                 obscureText: true
                 ),
                 GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: Text('Alredy have an account'),

                 ),
             MyButton(
              onTap: signuppage,
             )

          ]
        )
      )
    );
  }
}