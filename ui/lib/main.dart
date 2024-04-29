import 'package:flutter/material.dart';
import 'package:ui/Profile.dart';
import 'package:ui/appbar.dart';
import 'package:ui/posts.dart';
// ignore: unused_import
import 'mystyle.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        backgroundColor: Color(0xFFA5D6A7),
        body: ListView(
          children: [
             Stack(
              children: [
                MyPosts(),
               Profile(), //profile  
               MyAppBar() //Appbar
              ],
            )
          ],
        ),
        )
      ),
    );
  }
}