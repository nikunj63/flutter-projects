import 'package:flutter/material.dart';
import 'package:moyemoye/Loginpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),backgroundColor: Colors.blueAccent,
          ),
          body: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder:(context)=>LoginPage() 
                    )
                    );
                },
                child:Text('First login to the App',),
              )
            ],
          ),
    );
  }
}