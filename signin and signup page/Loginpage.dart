

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moyemoye/homepage.dart';
import 'package:moyemoye/my_button.dart';
import 'package:moyemoye/my_textfield.dart';
import 'package:moyemoye/signup.dart';
class LoginPage extends StatefulWidget {
 const  LoginPage
({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//text editing controllers
final usernamecontroller=TextEditingController();
final passwordcontroller=TextEditingController();
//sign user in method
void Signuserin(){}
  @override
  Widget build(BuildContext context) {
     Mytextfield(
          Controller: passwordcontroller,
          hintText: 'Password',
          obscureText: true,
          
          );
    return  Scaffold(
      backgroundColor:Colors.grey,
      body:SafeArea(
        child:Column(
          children: [
           const SizedBox(height: 50),

        // logo

        const Icon(
          Icons.lock,
          size: 100,
          ),
          
          
          
          
        // welcome back, you've been missed!

        Text(
        "Welcome back you/'ve been  missed! ",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 10
          )
      ),
     const SizedBox(height: 50,),

      //username textfield
      Mytextfield(
        Controller:usernamecontroller, 
        hintText: 'Username', 
        obscureText: false,
        ),

        //password textfield

         Mytextfield(
          hintText: "PassWord",
          Controller:passwordcontroller,
          obscureText: true,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>signuppage()));
            },
            child:  Text(
            'create an account'
            ),
            ),
          

          //forget password
          Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.grey),
            ),
            
         //sign in button
         MyButton(
          onTap:Signuserin ,
         ),

         const SizedBox(height: 50,),

         //or continue with
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Expanded(
                child:Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Or continue with',
                style: TextStyle(color: Colors.black,),
                ),
                ),
            ],
          ),
          ),
         GestureDetector(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder:(context)=>Homepage()
                )
              );
            },
          ),


          
          ],          
        ),
      )
      );

    
  }
}