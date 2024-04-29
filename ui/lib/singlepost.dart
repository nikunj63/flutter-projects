import 'package:flutter/material.dart';
import 'package:ui/mystyle.dart';
class SinglePosts extends StatelessWidget {
  const SinglePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                decoration:BoxDecoration(
                 
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),topLeft:Radius.circular(50) )
                ) ,
                margin:EdgeInsets.only(left: 40.0) ,
                height: 150,
                width:double.infinity,
                 child: ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),topLeft:Radius.circular(50) ),
                  child:Image.asset("assets/image1.jpg",fit: BoxFit.cover,)),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                margin:EdgeInsets.only(left: 80.0,right: 5.0,bottom: 30.0)  ,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("today's sunset",style: postsText,
                    ),
                      Row(
                  children: [
                    Icon(
                      Icons.comment,
                       size:16.0 ,
                       color: Colors.black,
                    ),
                    Text("15",style: postsText,),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.favorite_border, 
                      size:16.0 ,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width:5 ,
                    ),
                    Text("150k",style: postsText,)
                  ],
                )
                  ]
                
                ),
              ),
               
            ],
          );
      
    
  }
}