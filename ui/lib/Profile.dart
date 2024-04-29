import 'package:flutter/material.dart';
import 'package:ui/mystyle.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 170),
      width: double.infinity,
                  height: 350,
                  decoration:const BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))
                  ),
                  child:const Column(
                    children: [
                      CircleAvatar(backgroundColor:Colors.blue,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Nikunj Shukla",style: heading4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on,size: 16.0,color: Colors.grey,
                          ),
                          Text("Uttar Pradesh",style: TextStyle(
                            color: Colors.grey
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children:[
                              Text(
                                "121",
                                style: countText,
                              ),
                              Text(
                                "Posts",
                                style: followText,
                              )
                            ]
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Column(
                            children:[
                              Text(
                                "10M",
                                style: countText,
                              ),
                              Text(
                                "Followers",
                                style: followText,
                              )
                            ]
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Column(
                            children:[
                              Text(
                                "2",
                                style: countText,
                              ),
                              Text(
                                "Following",
                                style: followText,
                              )
                            ]
                          )
                        ],

                      )
                    ],
                  ) ,
                );
  }
}